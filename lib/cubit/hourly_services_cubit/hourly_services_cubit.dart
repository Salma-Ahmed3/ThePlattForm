// import 'dart:developer';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:nowproject/cubit/hourly_services_cubit/hourly_services_state.dart';
// import 'package:nowproject/services/app_services.dart';

// class HourlyServicesCubit extends Cubit<HourlyServicesState> {
//   HourlyServicesCubit() : super(HourlyServicesInitial());

//   Future<void> fetchServices(
//     String id,
//     String name,
//     String description,
//     String iconUrl,
//   ) async {
//     emit(HourlyServicesLoading());

//   final body = {
//       'id': id,
//       'name': name,
//       'description': description,
//       'iconUrl': iconUrl,
//     };
//     var result = await AppService.callService(
//       actionType: ActionType.get,
//       apiName: 'Service/ServicesForService?serviceType=1',
//       body: null,
//     );

//      void fetchServices(int id, String name, String description, String iconUrl) {
//     try {
//       emit(HourlyServicesLoading());
//       // Your logic to fetch services using the provided id, name, etc.
//       // For example:
//       log('Fetching services with id: $id, name: $name, description: $description, iconUrl: $iconUrl');
//       emit(HourlyServicesLoading()); // Emit success state
//     } catch (error) {
//       emit(HourlyServicesFailuer(error: error.toString())); // Emit error state
//     }
//   }

//   }
// }
