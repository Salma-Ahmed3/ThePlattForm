import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/controller/dynamic_steps/dynamic_steps_controller.dart';
import 'package:nowproject/cubit/step/first_step_state.dart';

class FirstStepCubit extends Cubit<FirstStepState> {
  FirstStepCubit() : super(FirstStepInitial());
  StepDetailsVm firstStep = StepDetailsVm();
  ActionStep actionStep = ActionStep();

  static Future<StepDetailsVm?> firtStep({
    required String serviceType,
    required String object,
  }) async {
    var result = await DynamicStepsController.firstStepAction(
        serviceType: serviceType, object: object );
    if (result != null) {
      return result;
    }
    return null;
  }
  static Future<Map<String, dynamic>?> getAddrease({
    required String serviceId,
    required String contactId,
    String? serviceType,
  }) async {
    var result = await DynamicStepsController.firstAddrease(
        serviceId: serviceId, contactId: contactId );
    if (result != null) {
      return result;
    }
    return null;
  }

  getNationality({
    required String serviceId,
  }) async {
    var result = await DynamicStepsController.nationality(serviceId: serviceId);
    if (result != null) {
      return result;
    }
    return null;
  }

  getPeriodTime({
    required String serviceId,
  }) async {
    var result = await DynamicStepsController.periodTime(serviceId: serviceId);
    if (result != null) {
      return result;
    }
    return null;
  }

  getTimeHours({
    required String serviceId,
    required String shift,
  }) async {
    var result = await DynamicStepsController.hourlyTime(
        serviceId: serviceId, shift: shift);
    if (result != null) {
      return result;
    }
    return null;
  }

  fetchVisitTime({
    required String timeSlotId,
  }) async {
    var result = await DynamicStepsController.visitTime(timeSlotId: timeSlotId);
    if (result != null) {
      return result;
    }
    return null;
  }

  fetchFixedPackage({
    required String stepId,
  }) async {
    var result = await DynamicStepsController.fetchFixedPackage(
      stepId: stepId,
    );
    if (result != null) {
      return result;
    }
    return null;
  }

  fetchCalenderDays({required String serviceId, visitShift}) async {
    var result = await DynamicStepsController.fetchCalenderDays(
        serviceId: serviceId, visitShift: visitShift);
    if (result != null) {
      return result;
    }
    return null;
  }
    fetchContractSuccess({
    required String id,
    required String type
  }) async {
    var result = await DynamicStepsController.fetchContractSuccess(
     id: id,
     type: type
    );
    if (result != null) {
      return result;
    }
    return null;
  }
}
