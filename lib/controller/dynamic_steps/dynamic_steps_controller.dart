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
      log("Services: $result");
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
      log("Addrease: $result");
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

  static Future<Map<String, dynamic>?> periodTime({
    required String serviceId,
  }) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'HourlyContract/Shifts',
        body: {},
        query: {
          'serviceId': serviceId,
        },
      );
      log("Period Time: $result");
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

  static Future<Map<String, dynamic>?> hourlyTime({
    required String serviceId,
    required String shift,
  }) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'HourlyContract/ShiftHours',
        body: {},
        query: {
          'serviceId': serviceId,
          'shift': shift
          },
      );
      log("TimeHours Response: $result");
      if (result != null) {
        return result; // Ensure this is a map with "data" as a list of maps
      } else {
        throw Exception('Failed to fetch data');
      }
    } on Exception catch (e, s) {
      print(e.toString() + s.toString());
      // TODO
    }
    return null;
  }

  static Future<Map<String, dynamic>?> visitTime({
    required String timeSlotId,
  }) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'HourlyTimeSlot/GetArrivalTime',
        body: {},
        query: {
          'TimeSlotId': timeSlotId,
        },
      );
      log("Visit Time: $result");
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

  static Future<Map<String, dynamic>?> fetchFixedPackage({
    required String stepId,
  }) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'HourlyContract/FixedPackage',
        body: {},
        query: {
          'stepId': stepId,
        },
      );
      log("Fixed Package: $result");
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
