import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

part 'loading_state.dart';

class Loading extends Cubit<LoadingState> {
  Loading() : super(const LoadingInitial());

  void hide() {
    // Provide a default value for state.change in case it's null
    final changeValue = state.change ?? false;
    emit(LoadingChange(!changeValue, false));
  }

  void show() {
    // Ensure Get.context is not null before calling unfocus()
    if (Get.context != null) {
      FocusScope.of(Get.context!).unfocus();
    }
    final changeValue = state.change ?? false;
    emit(LoadingChange(!changeValue, true));
  }
}
