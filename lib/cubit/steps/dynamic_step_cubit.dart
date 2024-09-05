import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:nowproject/Models/hourly/editable_visible_properties.dart';
import 'package:nowproject/Models/hourly/selected_hourly_pricing.dart';
import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/controller/dynamic_step/dynamic_step.dart';
import 'package:nowproject/controller/horly_contract/hourly_contract.dart';
import 'package:nowproject/cubit/Login/login_cubit.dart';
import 'package:nowproject/cubit/loading_cubit/loading_cubit.dart';
import 'package:nowproject/utility/enums.dart';
part 'dynamic_step_state.dart';

class DynamicStepCubit extends Cubit<DynamicStepState> {
  DynamicStepCubit() : super(DynamicStepInitial());
  final Loading loading = Loading();
  StepDetailsVm firstStep = StepDetailsVm();
  ActionStep actionStep = ActionStep();
  String serviceType = ServiceType.none;

  /// INDIVIDUAL - HOURLY STEPS
  getFirstStep(
      {String? serviceType,
      String? object,
      bool? removeAllRoute,
      dynamic args,
      bool hourlyPackageSettingFromOffer = false,
      SelectedPackage? getPricingDetails}) async {
    loading.show;
    var result = await DynamicStepsController.firstStepAction(
        serviceType: serviceType, object: object);
    loading.hide;

    if (result != null) {
      firstStep = result;
      actionStep.stepDetailsVm = firstStep;

      /// HOURLY OFFER DETAILS
      if (hourlyPackageSettingFromOffer) {
        loading.show;
        EditableVisibleProperties? editableVisibleProperties =
            await HourlyContractController.getEditableVisibleProperties(
                stepId: firstStep.stepId);
        loading.hide;
      }
    }
  }

  /// Step hourly and iniv Anonymous
  getContactHadStepsAnonymous() async {
 
    AnonymousModel? result;
    if (BlocProvider.of<DynamicStepCubit>(Get.context!, listen: false)
            .serviceType ==
        ServiceType.hourlyServiceType) {
      result = await DynamicStepsController.contactHadStepsAnonymous(
          crmUserId: BlocProvider.of<LoginCubit>(Get.context!, listen: false).toString(),
          stepId: BlocProvider.of<DynamicStepCubit>(Get.context!, listen: false)
              .firstStep
              .stepId);
    } else if (BlocProvider.of<DynamicStepCubit>(Get.context!, listen: false)
            .serviceType ==
        ServiceType.individualServiceType) {
      result = await DynamicStepsController.contactHadStepsAnonymousIndiv(
          crmUserId: BlocProvider.of<LoginCubit>(Get.context!, listen: false)
              .toString(),
          stepId: BlocProvider.of<DynamicStepCubit>(Get.context!, listen: false)
              .firstStep
              .stepId);
    }
  
  }
}