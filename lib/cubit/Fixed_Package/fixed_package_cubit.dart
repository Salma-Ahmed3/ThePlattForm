import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:nowproject/Models/fixed/fixed.dart';
import 'package:nowproject/Models/fixed_package_models/fixed_package_models.dart';

import 'package:nowproject/cubit/Fixed_Package/fixed_package_state.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';

class FixedPackageCubit extends Cubit<FixedPackageState> {
  final FirstStepCubit firstStepCubit;
  FixedPackageCubit({required this.firstStepCubit})
      : super(FixedPackageInitial());

  void getFixedPackage(String stepId) async {
    try {
      emit(FixedPackageLoading());

      final fixedPackageJson =
          await firstStepCubit.fetchFixedPackage(stepId: stepId);

      if (fixedPackageJson != null) {
        final fixedPackage = FixedPackageModel.fromJson(
            fixedPackageJson);
        log("Fixed Package: $fixedPackageJson");

        if (fixedPackage.data != null) {
          log("Fixesddddd2: $fixedPackage");
          emit(FixedPackageListUpdate(fixedPackage: fixedPackage.data!.selectedPackages!));
        } else {
          emit(FixedPackageUpdate(fixedPackag: fixedPackage));
        }
      } else {
        emit(FixedPackageFailure(error: 'لا يوجد باقات متاحه'));
      }
    } catch (e, s) {
      log(e.toString() + s.toString());
      emit(FixedPackageFailure(error: ' هناك خطأ ما: $e'));
    }
  }
}
