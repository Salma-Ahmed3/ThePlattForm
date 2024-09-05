import 'dart:convert';
import 'package:nowproject/Models/services.dart';

import '../../services/app_services.dart';
/// SWAGGER  SERVICE CONTROLLER
class ServiceController {
  /// GET SERVICE FOR HOUR SECTOR
  static Future<List<ServiceItems>>getService({String? serviceType}) async {

    var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'api/Service/ServicesForService?serviceType=$serviceType',
        body: null);

    return result != null ? serviceFromJson(result) : <ServiceItems>[] ;
  }
  /// GET Calendar Days
  static Future<List<String>> getCalendarDays({String? serviceId}) async {

    var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'api/Service/GetCalendarDays?serviceId=$serviceId',
        body: null);

    return result != null
        ? List<String>.from(json.decode(result).map((x) => x))
        : <String>[];
  }
  /// Get Service Terms
  static Future<String> getTermsByService({String? serviceId}) async {

    var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'api/Service/GetServiceTerms?serviceId=$serviceId',
        body: null);

    return result != null ? result.toString().replaceAll('"', '') : '';
  }

  static Future<String?>getShiftArrivalTime({String? serviceId , String? shift}) async {

    var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'api/Service/ShiftArrivalTime?serviceId=$serviceId&shift=$shift',
        body: null);

    return result;
  }

}
