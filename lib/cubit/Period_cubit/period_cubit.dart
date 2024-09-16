import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:nowproject/Models/Period_time/period_model/datum.dart';
import 'package:nowproject/cubit/Period_cubit/period_state.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';

class PeriodCubit extends Cubit<PeriodState> {
  final FirstStepCubit firstStepCubit;

  PeriodCubit({required this.firstStepCubit}) : super(PeriodInitial());

  void fetchPeriodTime(String serviceId) async {
    try {
      emit(PeriodLoading());

      final periodTimeJson =
          await firstStepCubit.getPeriodTime(serviceId: serviceId);

      if (periodTimeJson != null) {
        // Parse the nationality data
        final periodTime = (periodTimeJson['data'] as List<dynamic>)
            .map((json) => PeriodModel.fromJson(json as Map<String, dynamic>))
            .toList();

        log("Fetched Timeeeeeee: $periodTime");

        if (periodTime.isNotEmpty) {
          emit(PeriodListUpdate(periodmodel: periodTime));
        } else {
          emit(PeriodFailure(error: 'لا توجد أوقات متاحة'));
        }
      } else {
        emit(PeriodFailure(error: 'فشل في جلب الاوقات'));
      }
    } catch (e, s) {
      log('Error: $e\nStacktrace: $s');
      emit(PeriodFailure(error: 'خطأ غير متوقع: $e'));
    }
  }
}
