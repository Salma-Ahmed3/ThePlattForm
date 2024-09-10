import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/controller/dynamic_steps/dynamic_steps_controller.dart';
import 'package:nowproject/cubit/loading_cubit/loading_cubit.dart';
import 'package:nowproject/cubit/step/first_step_state.dart';
import 'package:nowproject/utility/enums.dart';

class FirstStepCubit extends Cubit<FirstStepState> {
  FirstStepCubit() : super(FirstStepInitial());
  final Loading loading = Loading();
  StepDetailsVm firstStep = StepDetailsVm();
  ActionStep actionStep = ActionStep();
  String serviceType = ServiceType.none; 
  getFirstStep(
      {
      String? serviceId,
      String? contactId,
      bool? removeAllRoute,
      dynamic args,
      bool hourlyPackageSettingFromOffer = false,
      }) async {
    loading.show;
    var result = await DynamicStepsController.firstStepAction(
        serviceId: 'serviceId', contactId: 'contactId');
    loading.hide;
    if (result != null) {
      firstStep = StepDetailsVm.fromJson(result);
      actionStep.stepDetailsVm = firstStep;
        }
      }
    }
// class FirstStepCubit {
//   String? serviceId;
//   String? selectedPricingId;
//   bool? fromOffer;
//   final Loading loading = Loading();
//   ActionStep actionStep = ActionStep();


//   FirstStepCubit({
//     this.serviceId,
//     this.selectedPricingId,
//     this.fromOffer,
//   });

//   FirstStepCubit.fromJson(Map<String, dynamic> json) {
//     serviceId = json['ServiceId'];
//     selectedPricingId = json['SelectedPricingId'];
//     fromOffer = json['FromOffer'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['ServiceId'] = serviceId;
//     data['SelectedPricingId'] = selectedPricingId;
//     data['FromOffer'] = fromOffer;
//     return data;
//   }

//   Future<void> goToFirstStep(BuildContext context, String serviceType) async {
//     loading.show;

//     final String object = jsonEncode(FirstStepCubit(
//       fromOffer: false,
//       selectedPricingId: null,
//       serviceId: serviceId,
//     ).toJson());
//     var firstStep = await DynamicStepsController.firstStepAction(
//       serviceType: serviceType, 
//       object: object, 
//     );
//     loading.hide; 
//     if (firstStep != null) {
//       firstStep = firstStep;
//       actionStep.stepDetailsVm = firstStep; 
//     }
//   }
// }
