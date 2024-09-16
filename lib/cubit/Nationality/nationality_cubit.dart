import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/controller/dynamic_steps/dynamic_steps_controller.dart';
import 'package:nowproject/cubit/Nationality/nationality_state.dart';
import '../../Models/nationality/nationality.dart';

class NationalityCubit extends Cubit<NationalityState> {
  NationalityCubit() : super(NationalityInitial());

  void nationality(String serviceId) async {
    try {
      emit(NationalityLoading());
      final nationalityJson = await DynamicStepsController.nationality(serviceId: serviceId);

      if (nationalityJson != null) {
        // Handle the list of nationalities
        final nationalities = (nationalityJson['data'] as List<dynamic>)
            .map((json) => Nationality.fromJson(json as Map<String, dynamic>))
            .toList();
        
        log("Nationalities: $nationalities");
        
        if (nationalities.isNotEmpty) {
          emit(NationalityListUpdate(nationalities: nationalities));
        } else {
          emit(NationalityFailure(error: 'لا يوجد عناوين محفوظة'));
        }
      } else {
        emit(NationalityFailure(error: 'لا يوجد عنواين محفوظة'));
      }
    } catch (e, s) {
      log('Error: $e\nStacktrace: $s');
      emit(NationalityFailure(error: 'خطأ غير متوقع: $e'));
    }
  }
}
