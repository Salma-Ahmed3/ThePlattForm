import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/hourly/Nationality/nationality.dart';
import 'package:nowproject/cubit/Nationality/nationality_state.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';

class NationalityCubit extends Cubit<NationalityState> {
  final FirstStepCubit firstStepCubit;

  NationalityCubit({required this.firstStepCubit})
      : super(NationalityInitial());

  void fetchNationalities(String serviceId) async {
    try {
      emit(NationalityLoading());

      final nationalityJson =
          await firstStepCubit.getNationality(serviceId: serviceId);

      if (nationalityJson != null) {
        // Parse the nationality data
        final nationalities = (nationalityJson['data'] as List<dynamic>)
            .map((json) => Nationality.fromJson(json as Map<String, dynamic>))
            .toList();

        log("Fetched Nationalities: $nationalities");

        if (nationalities.isNotEmpty) {
          emit(NationalityListUpdate(nationalities: nationalities));
        } else {
          emit(NationalityFailure(error: 'لا توجد جنسيات متاحة'));
        }
      } else {
        emit(NationalityFailure(error: 'فشل في جلب الجنسيات'));
      }
    } catch (e, s) {
      log('Error: $e\nStacktrace: $s');
      emit(NationalityFailure(error: 'خطأ غير متوقع: $e'));
    }
  }
}
