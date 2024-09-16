import 'dart:developer';
import 'package:nowproject/services/app_services.dart';

class DynamicStepsController {
  static Future<Map<String, dynamic>?> firstStepAction({
    required String contactId,
    required String serviceId,
  }) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'SavedContactLocation/ContactSavedAddress',
        body: {},
        query: {
          'contactId': contactId,
          'serviceId': serviceId,
        },
      );
      log("firstStepActionss: $result");
      if (result != null) {
        return result;
      } else {
        throw Exception('Failed to fetch data');
      }
    } on Exception catch (e, s) {
      print(e.toString() + s.toString());
      // TODO
    }
    return null;
  }
  static Future<Map<String, dynamic>?> nationality({
    required String serviceId,
  }) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'ResourceGroup/GetResourceGroupsByService',
        body: {},
        query: {
          'serviceId': serviceId,
        },
      );
      log("firstStepActionss: $result");
      if (result != null) {
        return result;
      } else {
        throw Exception('Failed to fetch data');
      }
    } on Exception catch (e, s) {
      print(e.toString() + s.toString());
      // TODO
    }
    return null;
  }
}
