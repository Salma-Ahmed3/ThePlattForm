import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:nowproject/Models/hourly/time_hours/time_hours.dart';
import 'package:nowproject/cubit/Time_Hours_cubit/time_hours_state.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';

class TimeHoursCubit extends Cubit<TimeHoursState> {
  final FirstStepCubit firstStepCubit;

  TimeHoursCubit({required this.firstStepCubit}) : super(TimeInitial());
  void getTimeHours(String serviceId, String shift) async {
    try {
      emit(TimeLoading());

      final timeHoursJson =
          await firstStepCubit.getTimeHours(serviceId: serviceId, shift: shift);

      // Ensure response and data are not null
      if (timeHoursJson != null && timeHoursJson['data'] != null) {
        final data = timeHoursJson['data'];

        // Check if 'data' is a list
        if (data is List) {
          final timeHour = data
              .map((item) => TimeHours.fromJson(item as Map<String, dynamic>))
              .toList();

          log("Fetched Time hours: $timeHour");

          if (timeHour.isNotEmpty) {
            emit(TimeListUpdate(timeHour: timeHour));
          } else {
            emit(TimeFailure(error: 'No available times'));
          }
        } else {
          emit(TimeFailure(error: 'Invalid data format - expected list'));
        }
      } else {
        log("API Response: $timeHoursJson"); // Log for debugging
        emit(TimeFailure(error: 'Failed to fetch times or no data returned'));
      }
    } catch (e, s) {
      log('Error: $e\nStacktrace: $s');
      emit(TimeFailure(error: 'Unexpected error: $e'));
    }
  }
}
