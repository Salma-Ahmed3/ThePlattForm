import 'dart:developer';

import 'package:bloc/bloc.dart';
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

  final fixedPackageJson = await firstStepCubit.fetchFixedPackage(stepId: stepId);

  if (fixedPackageJson != null) {
    final fixedPackage = FixedPackageModel.fromJson(fixedPackageJson);

    if (fixedPackage.data != null && fixedPackage.data!.selectedPackages != null) {
      emit(FixedPackageListUpdate(selectedPackages: fixedPackage.data!.selectedPackages!));
    } else {
      emit(FixedPackageFailure(error: 'لا توجد باقات متاحه'));
    }
  } else {
    emit(FixedPackageFailure(error: 'هناك خطأ ما'));
  }
} catch (e, s) {
  log('Error: $e\nStackTrace: $s');
  emit(FixedPackageFailure(error: 'هناك خطأ ما: $e'));
}

  }
}
