import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/Screens/Choose%20Addrease/choose_addrese_view.dart';
import 'package:nowproject/controller/dynamic_steps/dynamic_steps_controller.dart';
import 'package:nowproject/cubit/loading_cubit/loading_cubit.dart';
import 'package:nowproject/cubit/step/first_step_state.dart';
import 'package:nowproject/routes/on_generate_route.dart';
import 'package:nowproject/utility/enums.dart';

import '../../utility/app_navigator.dart';

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
      dynamic args,
      bool? removeAllRoute,

}) async {
  var result = await DynamicStepsController.firstStepAction(
    serviceType: serviceType,
    object: object,
  );

  if (result != null) {
     firstStep = result;
      actionStep.stepDetailsVm = firstStep;
log('First Stepppppppppppppppppppppppppppppppppppppppp: ${firstStep.name}');
    // final stepId = result.name; 
    // Navigator.of(context).pushNamed(
    //  ScreenNames.savedAddress,  
    //   // arguments: stepId,
    // );
    // log("First Step: $stepId");
    checkResultAction(
          stepDetails: result,
          args: args,
          isFirstStep: true,
          removeAllRoutes: removeAllRoute ?? false);
    log("First Step: $checkResultAction");

  } 
}

  /// CHECK ACTION RETURN IF UI PAGE OR METHOD NEED TO IMPLEMENT
  checkResultAction({
    required StepDetailsVm stepDetails,
    String? actionName,
    dynamic args,
    bool isFirstStep = false,
    bool removeAllRoutes = false,
  }) async {
    // نوع العقد
    if (stepDetails.stepType == 3) {
      /// STRATEGY
      actionStep.stepDetailsVm = stepDetails;
      switch (stepDetails.action) {
        case 'SavedAddresses':
          // savedAddresses();
          break;
        case 'HourlyPackagePromotion':
          break;
        case 'SelectPackage':
          break;
        case 'CreateContract':
          createContract();
          break;
        default:
          break;
      }
      print("DETAILSsssssssssssssssssss: ${stepDetails.name}");

    } else if (stepDetails.stepType == 2 || stepDetails.stepType == 8) {
      /// SCREEN UI
      actionStep.stepDetailsVm = stepDetails;
      print("STEP DETAILS: ${stepDetails.name}");
      reDirectToScreen(
          stepAction: actionName ?? stepDetails.name,
          args: args,
          removeAllRoute: removeAllRoutes,
          isFirstStep: isFirstStep);
    } else if (stepDetails.stepType == 6) {
      // /// POP UP
      // if (stepDetails.action == "CovidQuestionnaire") {
      //   questionnaire();
      // } 
      // else if (stepDetails.action == "SelectAndDeliverEmployee") {
      //   getDeliveryMethod(stepDetails: stepDetails);
      // } else if (stepDetails.action == "UnAvailableEmployee") {
      //   unAvailableEmployee(stepDetails);
      // } else if (stepDetails.action == "ContactBlocked") {
      //   contactBlocked();
      // } else if (stepDetails.action == "SelectCalender") {
      //   getCalenderOptions(stepDetails: stepDetails);
      // } else if (stepDetails.action == "ContactHadStepsAnonymous") {
      //   await CustomDialog.youHaveToLoginDialog(() {}, () {});
      // }
    }
  }
getAlternativeStep({String? actionName, String? serviceType}) async {
    loading.show;
    StepDetailsVm? result = await DynamicStepsController.alternativeStep(
        actionName: actionName,
        serviceType: serviceType,
        stepId: firstStep.stepId);
    loading.hide;

    if (result != null) {
      checkResultAction(stepDetails: result);
    }
  }
  createContract() async {
    loading.show;
    ActionStep? result;
    if (serviceType == ServiceType.individualServiceType ||
        serviceType == ServiceType.offerServiceType) {
      result = await DynamicStepsController.createContractAction(
          stepId: firstStep.stepId!);
    } else if (serviceType == ServiceType.hourlyServiceType) {
      result = await DynamicStepsController.createContractAction(
          stepId: firstStep.stepId!);
    }
    loading.hide;
    if (result != null) {
      checkResultAction(stepDetails: result.stepDetailsVm!);
    }
  }


//  questionnaire() async {
//     GenericCubit<List<CovidQuestionnaire>> questionCovidQuestionnaireListCubit =
//         GenericCubit(data: []);
//     GenericCubit<bool> isUserCompleteQuestionCubit = GenericCubit(data: true);
//     GenericCubit<bool> isisUserSelectValidDataCubit = GenericCubit(data: true);

//     List<CovidQuestionnaire> questionnaire =
//         await QuestionnaireController.getQuestionnaire();
//     questionCovidQuestionnaireListCubit.update(data: questionnaire);

//     customAlertChild(
//       context: Get.context!,
//       title: HourlyTR.questionnaire.tr,
//       child: QuestionItem(
//         questionCubit: questionCovidQuestionnaireListCubit,
//         isisUserSelectValidDataCubit: isisUserSelectValidDataCubit,
//         isUserCompleteQuestionCubit: isUserCompleteQuestionCubit,
//         onPressed: () async {
//           goBack();
//           loading.show;
//           ActionStep? result =
//               await HourlyContractController.nextCovidQuestionnaire(
//                   stepId: firstStep.stepId);
//           loading.hide;
//           if (result != null) {
//             checkResultAction(stepDetails: result.stepDetailsVm!);
//           }
//         },
//       ),
//     );
//   }


reDirectToScreen(
    {required String? stepAction,
    dynamic args,
    required bool isFirstStep,
    required bool removeAllRoute}) {
  if (removeAllRoute) {
    goToWithRemoveRoute(screenNames: stepAction!, arguments: args);
    return;
  }
  if (isFirstStep) {
    goToScreen(screenNames: stepAction!, arguments: args);
  } else {
    goToScreenpopAndPushNamed(screenNames: stepAction!, arguments: args);
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