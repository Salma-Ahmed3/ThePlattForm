import 'dart:convert';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';
import 'package:nowproject/services/app_services.dart';

class DynamicStepsController {
 static Future<StepDetailsVm?> firstStepAction({
  required FirstStepObjParameter object,
  required String? serviceType,
}) async {
      final obj =  json.encode(object.toJson());
  log("Object Is: $obj"); 
  var result = await AppService.callService(
    actionType: ActionType.get,
    apiName: 'Steps/FirstStep?serviceType=$serviceType&Object=$obj',
  );
  log("Request First Step Action: $result"); 

  return result != null ? StepDetailsVm.fromJson(result) : null;
}

  static Future<Map<String, dynamic>?> firstAddrease({
    required String contactId,
    required String serviceId,
  }) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'SavedContactLocation/ContactSavedAddress?contactId=$contactId&serviceId=$serviceId',
        body: {},
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
    static Future<StepDetailsVm?> alternativeStep(
      {String? actionName, String? serviceType, String? stepId}) async {
    var result = await AppService.callService(
        actionType: ActionType.get,
        apiName:
            'api/Steps/Alternative?serviceType=$serviceType&actionName=$actionName&stepId=$stepId',
        body: null);

    return result != null ? StepDetailsVm.fromJson(result) : null;
  }

  static Future<Map<String, dynamic>?> nationality({
    required String serviceId,
  }) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'ResourceGroup/GetResourceGroupsByService?serviceId=$serviceId',
        body: {},
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
       
        apiName: 'HourlyContract/Shifts?serviceId=$serviceId',
        body: {},
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
        apiName: 'HourlyContract/ShiftHours?serviceId=$serviceId&shift=$shift',
        body: {},
      );
      log("TimeHours Response: $result");
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

  static Future<Map<String, dynamic>?> visitTime({
    required String timeSlotId,
  }) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'HourlyTimeSlot/GetArrivalTime?timeSlotId=$timeSlotId',
        body: {},
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
        apiName: 'HourlyContract/FixedPackage?stepId=$stepId',
        body: {},
        
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

  static Future<Map<String, dynamic>?> fetchCalenderDays(
      {required String serviceId, visitShift}) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'HourlyContract/CalenderOptions?serviceId=$serviceId&visitShift=$visitShift',
        body: {},
      );
      log("Calender Days: $result");
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
  static Future<Map<String, dynamic>?> fetchContractSuccess(
      {required String id, required String type}) async {
    try {
      var result = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'Payment/ShopperResult?id=$id&type=$type',
        body: {},
       
      );
      log("Contract Success: $result");
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

  
  static Future<ActionStep?> createContractAction({String? stepId}) async {
    var result = await AppService.callService(
        actionType:
            BlocProvider.of<FirstStepCubit>(Get.context!, listen: false)
                        .actionStep
                        .stepDetailsVm!
                        .httpMethod!
                        .toLowerCase() ==
                    ActionType.post.name
                ? ActionType.post
                : ActionType.get,
        apiName:
            'api/${BlocProvider.of<FirstStepCubit>(Get.context!, listen: false).actionStep.stepDetailsVm!.controller}/${BlocProvider.of<FirstStepCubit>(Get.context!, listen: false).actionStep.stepDetailsVm!.action}?stepId=$stepId',
        body: null);

    return result != null ? ActionStep.fromJson(result) : null;
  }
}
