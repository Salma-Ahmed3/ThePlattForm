import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/services.dart';
import 'package:nowproject/services/app_services.dart';

part 'hourly_services_state.dart';

class HourlyServicesCubit extends Cubit<HourlyServicesState> {
  HourlyServicesCubit() : super(HourlyServicesInitial());

  Future<void> fetchHourlyServices(String serviceType) async {
    emit(HourlyServicesLoading());

    final queryParameters = {'serviceType': serviceType}; 

    final response = await AppService.callService(
      actionType: ActionType.get,
      apiName: 'Service/ServicesForService',
      body: {},
      query: queryParameters,
    );

    if (response != null && response['status'] == 200) {
      List<Service> services = (response['data'] as List)
          .map((serviceData) => Service.fromJson(serviceData))
          .toList();

      emit(HourlyServicesSuccess(services: services));
    } else {
      emit(const HourlyServicesFailure(
        error:  ' لا يوجد خدمات متاحه',
      ));
    }
  }
}
