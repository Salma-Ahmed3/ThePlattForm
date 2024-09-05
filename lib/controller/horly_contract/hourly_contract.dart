import 'dart:convert';

import 'package:nowproject/Models/hourly/editable_visible_properties.dart';
import 'package:nowproject/services/app_services.dart';

class HourlyContractController {
  /// get Num Of Workers
  static Future<bool> isHourlySectorAvailable() async {
    var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'api/HourlyContract/IsHourlySectorAvailable',
        body: null);

    return result != null
        ? jsonDecode(result).toLowerCase() == 'true'
            ? true
            : false
        : false;
  }
    static Future<EditableVisibleProperties?> getEditableVisibleProperties(
      {String? stepId}) async {
    var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'api/HourlyContract/SelectPacakgeSettings?stepId=$stepId',
        body: null);

    return result != null
        ? EditableVisibleProperties.fromJson(json.decode(result))
        : EditableVisibleProperties(
            editableProperties: [], visableProperties: []);
  }

}