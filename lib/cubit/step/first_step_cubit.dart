import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/Screens/Choose%20Addrease/choose_addrese_view.dart';
import 'package:nowproject/controller/dynamic_steps/dynamic_steps_controller.dart';
import 'package:nowproject/cubit/loading_cubit/loading_cubit.dart';
import 'package:nowproject/cubit/step/first_step_state.dart';
import 'package:nowproject/utility/enums.dart';

class FirstStepCubit extends Cubit<FirstStepState> {
  FirstStepCubit() : super(FirstStepInitial());
  String serviceType = ServiceType.none; 
  final Loading loading = Loading();
  StepDetailsVm firstStep = StepDetailsVm();
  ActionStep actionStep = ActionStep();
Future<void> fetchFirstStep({
  required String serviceType,
  required FirstStepObjParameter object,
  required BuildContext context,
}) async {
  var result = await DynamicStepsController.firstStepAction(
    serviceType: serviceType,
    object: object,
  );

  if (result != null) {
    final stepId = result.stepId; 
    Navigator.of(context).pushNamed(
      ChooseAddreseView.routeName,  
      arguments: stepId,
    );
    log("First Step: $stepId");
  } else {
    log('Failed to retrieve step data.');
  }
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
class FirstStepObjParameter {
  String? serviceId;
  // String? selectedPricingId;
  bool? fromOffer;

  FirstStepObjParameter(
      {this.serviceId,this.fromOffer});

  FirstStepObjParameter.fromJson(Map<String, dynamic> json) {
    serviceId = json['ServiceId'];
    // selectedPricingId = json['SelectedPricingId'];
    fromOffer = json['FromOffer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ServiceId'] = serviceId;
    // data['SelectedPricingId'] = selectedPricingId;
    data['FromOffer'] = fromOffer;
    return data;
  }
}