import 'dart:convert';

import 'package:nowproject/services/app_services.dart';

class DynamicStepsController {
static Future<Map<String, dynamic>?> firstStepAction({
    required String contactId,
    required String serviceId,
  }) async {
    var result = await AppService.callService(
      actionType: ActionType.get,
      apiName: 'SavedContactLocation/ContactSavedAddress',
      body: {},
      query: {
        'contactId': contactId,
        'serviceId': serviceId,

      },
    );

    if (result != null) {
      return result;
    } else {
      throw Exception('Failed to fetch data');
    }
  
}

}
