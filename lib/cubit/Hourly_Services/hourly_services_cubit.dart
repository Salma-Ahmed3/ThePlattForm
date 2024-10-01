import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/services.dart';
import 'package:nowproject/services/app_services.dart';

part 'hourly_services_state.dart';

class HourlyServicesCubit extends Cubit<HourlyServicesState> {
  HourlyServicesCubit() : super(HourlyServicesInitial());

  Future<void> fetchHourlyServices(String serviceType) async {
    emit(HourlyServicesLoading());

    // final queryParameters = {'serviceType': serviceType};

    final response = await AppService.callService(
      actionType: ActionType.get,
      apiName: 'Service/ServicesForService?serviceType=$serviceType',
      body: {},
      // query: queryParameters,
    );

    if (response != null && response['status'] == 200) {
      List<Service> services = (response['data'] as List)
          .map((serviceData) => Service.fromJson(serviceData))
          .toList();

      emit(HourlyServicesSuccess(services: services));
    } else {
      emit(
        const HourlyServicesFailure(
          error: ' لا يوجد خدمات متاحه',
        ),
      );
    }
  }
}


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
    } else if (stepDetails.stepType == 2 || stepDetails.stepType == 8) {
      /// SCREEN UI
      actionStep.stepDetailsVm = stepDetails;
      reDirectToScreen(
          stepAction: actionName ?? stepDetails.name,
          args: args,
          removeAllRoute: removeAllRoutes,
          isFirstStep: isFirstStep);
    } else if (stepDetails.stepType == 6) {
      /// POP UP
      if (stepDetails.action == "CovidQuestionnaire") {
        questionnaire();
      } else if (stepDetails.action == "SelectAndDeliverEmployee") {
        getDeliveryMethod(stepDetails: stepDetails);
      } else if (stepDetails.action == "UnAvailableEmployee") {
        unAvailableEmployee(stepDetails);
      } else if (stepDetails.action == "ContactBlocked") {
        contactBlocked();
      } else if (stepDetails.action == "SelectCalender") {
        getCalenderOptions(stepDetails: stepDetails);
      } else if (stepDetails.action == "ContactHadStepsAnonymous") {
        await CustomDialog.youHaveToLoginDialog(() {}, () {});
      }
    }
  }
