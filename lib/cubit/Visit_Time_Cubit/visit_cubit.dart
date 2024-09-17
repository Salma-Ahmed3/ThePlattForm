import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:nowproject/Models/hourly/Visit_Timing/visit_time_model.dart';
import 'package:nowproject/cubit/Visit_Time_Cubit/visit_state.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';

class TimeVisitCubit extends Cubit<TimeVisitState> {
  final FirstStepCubit firstStepCubit;

  TimeVisitCubit({required this.firstStepCubit}) : super(VisitTimeInitial());

  void fetchVisitTime(String timeSlotId) async {
    try {
      emit(VisitTimeLoading());

      final visitTimeJson =
          await firstStepCubit.fetchVisitTime(timeSlotId: timeSlotId);

      if (visitTimeJson != null) {
        final visitTime = VisitTimeModel.fromJson(visitTimeJson);

        log("Fetched Favorite Time: $visitTime");

        if (visitTime.data != null) {
          emit(VisitTimeListUpdate(visitTimeModels: [visitTime]));
        } else {
          emit(VisitTimeFailure(error: 'لا توجد أوقات متاحة'));
        }
      } else {
        emit(VisitTimeFailure(error: 'فشل في جلب الاوقات'));
      }
    } catch (e, s) {
      log('Error: $e\nStacktrace: $s');
      emit(VisitTimeFailure(error: 'خطأ غير متوقع: $e'));
    }
  }
}
