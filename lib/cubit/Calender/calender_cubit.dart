import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:nowproject/Models/Calender/calender_model.dart';
import 'package:nowproject/cubit/Calender/calender_state.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';

class CalenderCubit extends Cubit<CalenderState> {
  final FirstStepCubit firstStepCubit;

  CalenderCubit({required this.firstStepCubit}) : super(CalenderInitial());

  void getCalenderDay(String serviceId, String visitShift) async {
    try {
      emit(CalenderLoading());

      final calenderJson = await firstStepCubit.fetchCalenderDays(
          serviceId: serviceId, visitShift: visitShift);

      if (calenderJson != null) {
        final calenderDays = CalenderModel.fromJson(calenderJson['data']);

        if (calenderDays.maxDate != null && calenderDays.minDate != null) {
          emit(CalenderListUpdate(calenderDays: [calenderDays]));
        } else {
          emit(CalenderFailure(error: 'لا توجد ايام متاحه'));
        }
      } else {
        emit(CalenderFailure(error: 'هناك خطأ ما'));
      }
    } catch (e, s) {
      log('Error: $e\nStackTrace: $s');
      emit(CalenderFailure(error: 'هناك خطأ ما: $e'));
    }
  }
}
