import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:nowproject/cubit/loading_cubit/loading_cubit.dart';
import 'package:nowproject/helper/local_store.dart';
import 'package:nowproject/utility/app_setting.dart';
import 'package:nowproject/utility/local_storge_key.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

class AppService {
  static String apikey =
      "UGFzc05BU0FQSUBOYXNBUElVc2VyMTIzQFBhc3M6TmFzQVBJVXNlcjEyM0B1c2Vy#";
  static String apiRequestHTML = "RequestTemplate,";
  static String platform = getPlatformName();
    static Future<Map<String, dynamic>?> callService({
      required ActionType actionType,
      required String apiName,
        Map<String, dynamic>? query,
        Map<String, dynamic>? body,
    }) async {
      try {
        final result = await InternetAddress.lookup('google.com');
        if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
          HttpWithMiddleware http = HttpWithMiddleware.build(
            middlewares: [
              HttpLogger(logLevel: LogLevel.BODY),
            ],
          );

          // Construct the URL with query parameters
     var   apiNameText =   Uri.parse("https://${AppSetting.serviceURL}/ar/api/${apiName}");
          var apiUrl = http.get(apiNameText);
          log("apiNameeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee: $apiNameText");
          // Construct the headers
          var header = {
            "content-type": 'application/json',
            "TimeX": DateTime.now().millisecondsSinceEpoch.toString(),
            "cache-control": "no-cache",
            "SignAuth": "$apikey${getSignature(apiNameText, 1000)}",
            "platform": platform,
            "version": '7.0.0',
            "source": "3",
            "Accept": 'application/json, text/plain, */*',
            // 'Authorization': "bearer ${await getStoredToken()}",
          };


        if (!checkIfNotLogin(apiUrl.toString())) {
        String? token = await getStoredToken();
          log("tokkkkkkkkkkkkkkkkkkkkkkkeeeeeeeeeennn: $token");

        if (token != null) {
          header.update('Authorization', (value) => "bearer $token",
              ifAbsent: () => "bearer $token");
        }
      }

          print("Request URL: $apiUrl");
          print("Headers: $header");

          // Make the HTTP request
          final response = actionType == ActionType.get
              ? await http.get(apiNameText, headers: header)
              : await http.post(apiNameText, headers: header, body: json.encode(body));

          print("Response Status: ${response.statusCode}");
          print("Response Body: ${response.body}");

          if (response.statusCode == 200) {
            final Map<String, dynamic> responseData = json.decode(response.body);

            // Check if the response contains an error message
            if (responseData['status'] != 200) {
              // Handle application-level errors
              return {
                'status': responseData['status'] ?? response.statusCode,
                'message':
                    responseData['message'] ?? 'An unknown error occurred.',
                'data': null,
              };
            } else {
              // Return the successful data
              return responseData;
            }
          } else {
            return {
              'status': response.statusCode,
              'message': 'Request failed with status: ${response.statusCode}',
              'data': null,
            };
          }
        } else {
          return {
            'status': 500,
            'message': 'No internet connection.',
            'data': null
          };
        }
      } catch (e) {
        return {'status': 500, 'message': 'An error occurred: $e', 'data': null};
      }
    }

  static String getSignature(Uri url, int key) {
    int x = url.toString().split('/').length;
    int y = url.toString().split('?').length;
    int portion1 = 2 * key;

    portion1 = portion1 + x;
    portion1 = portion1 + y;
    portion1 = portion1 + 8;

    int portion2 = key + x;
    portion2 = portion2 - y;
    portion2 = portion2 - 2;
    int portion3 = portion1 + portion2;
    portion3 = portion3 + 5;
    var portion4 = x + y;
    int sign = portion3 + portion4;
    return sign.toString();
  }

  static String getPlatformName() {
    return kIsWeb ? "Web" : Platform.operatingSystem;
  }

    static getStoredToken() async {
    String? storedToken =
        await AppLocalStore.getString(LocalStoreNames.appToken);
    if (storedToken != null) {
      var token = jsonDecode(storedToken);
      log("Tooooooooooooooooooooooooken: $storedToken");
      return token["access_token"].toString();
    } else {
      return null;
    }
  }

  
    static checkIfNotLogin(String apiUrl) {
    if (apiUrl.contains('login') ||
        apiUrl.contains('ResetPassword') ||
        apiUrl.contains('ReGenrateCode') ||
        apiUrl.contains('register') ||
        apiUrl.contains('VerifyCode') ||
        apiUrl.contains('ForgotPassword')) {
      return true;
    } else {
      return false;
    }
  }

  
}

enum ActionType { get, post }
