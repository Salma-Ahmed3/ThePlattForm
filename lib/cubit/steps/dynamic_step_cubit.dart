import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/hourly/selected_hourly_pricing.dart';
import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/controller/dynamic_step/dynamic_step.dart';
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
        serviceType: serviceType,
         object: object
         );
    loading.hide;

    if (result != null) {
      firstStep = result;
      actionStep.stepDetailsVm = firstStep;
    }
  }
}