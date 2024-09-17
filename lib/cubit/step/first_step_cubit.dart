import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/controller/dynamic_steps/dynamic_steps_controller.dart';
import 'package:nowproject/cubit/step/first_step_state.dart';

class FirstStepCubit extends Cubit<FirstStepState> {
  FirstStepCubit() : super(FirstStepInitial());
  StepDetailsVm firstStep = StepDetailsVm();
  ActionStep actionStep = ActionStep();

  static Future<Map<String, dynamic>?> getFirstStep({
    required String serviceId,
    required String contactId,
  }) async {
    var result = await DynamicStepsController.firstStepAction(
        serviceId: serviceId, contactId: contactId);
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
}
