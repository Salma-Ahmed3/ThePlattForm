import 'dart:convert';

import 'package:nowproject/Models/hourly/editable_visible_properties.dart';
import 'package:nowproject/services/app_services.dart';

class HourlyContractController {
  /// get Num Of Workers
  static Future<bool> isHourlySectorAvailable() async {
    var result = await AppService.callService(
      actionType: ActionType.get,
      apiName: 'api/HourlyContract/IsHourlySectorAvailable',
      body: null,
    );

    if (result != null) {
      // Check if result is already a Map or String before decoding
      if (result is String) {
        return result.toLowerCase() == 'true';
      } else if (result is Map) {
        // Handle the case if the result is already a Map
        return result['success'] == true; // Adjust this condition based on API response
      }
    }
    return false;
  }

  static Future<EditableVisibleProperties?> getEditableVisibleProperties(
      {String? stepId}) async {
    var result = await AppService.callService(
      actionType: ActionType.get,
      apiName: 'api/HourlyContract/SelectPacakgeSettings?stepId=$stepId',
      body: null,
    );

    if (result != null) {
      // Check if result is already a Map before decoding
      if (result is String) {
        // Decode only if it's a String
        return EditableVisibleProperties.fromJson(json.decode(result));
      } else if (result is Map<String, Object>) {
        // If it's already a map, pass it directly to the fromJson method
        return EditableVisibleProperties.fromJson(result);
      }
    }

    return EditableVisibleProperties(
      editableProperties: [],
      visableProperties: [],
    );
  }
}
