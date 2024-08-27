import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:nowproject/components/constant/constant.dart';
import 'package:nowproject/helper/local_store.dart';
import 'package:nowproject/utility/app_info.dart';
// import 'package:nowproject/utility/app_setting.dart';
import 'package:nowproject/utility/local_storge_key.dart';

class AppService {
  static String apikey =
      "UGFzc05BU0FQSUBOYXNBUElVc2VyMTIzQFBhc3M6TmFzQVBJVXNlcjEyM0B1c2Vy#";
  static String apiRequestHTML = "RequestTemplate,";
  static String platform = getPlatformName();

  ///[actionType] The type of the action get or post
  ///[apiName] The api url name api/controller/method
  ///[body] The data send with post request

  static String getPlatformName() {
    if (kIsWeb) {
      return "Android";
    } else {
      return Platform.operatingSystem.toString();
    }
  }

  static Future callService(
      {required ActionType actionType,
      required String apiName,
      String? umbracoUrl,
      required body}) async {
    Random random = Random();
    int timeX = (1000 + random.nextInt(1000));
    var apiUrl = umbracoUrl != null
        ? Uri.parse("$umbracoUrl$apiName")
        : Uri.parse('https://mueen-apitest.azurewebsites.net/ar/api/'
            // "${AppSetting.serviceURL}$globalLang/api/${apiName.replaceAll('api/', '')}"
            );
    var header = {
      "content-type": 'application/json',
      "TimeX": timeX.toString(),
      "cache-control": "no-cache",
      "SignAuth": "$apikey${getSignature(apiUrl, timeX)}",
      // "firebaseDeviceId": firebaseDeviceId!,
      "platform": platform,
      "version": AppInfo.packageInfo.version,
      "source": "1",
      "Accept": 'application/json, text/plain, /',
    };

    if (!checkIfNotLogin(apiUrl.toString())) {
      String? token = await getStoredToken();
      if (token != null) {
        header.update('Authorization', (value) => "bearer $token",
            ifAbsent: () => "bearer $token");
      }
    }
  }

  static getStoredToken() async {
    String? storedToken =
        await AppLocalStore.getString(LocalStoreNames.appToken);
    if (storedToken != null) {
      var token = jsonDecode(storedToken);

      return token["access_token"].toString();
    } else {
      return null;
    }
  }

  static String getSignature(url, int key) {
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

enum ActionType { get, post, put }
