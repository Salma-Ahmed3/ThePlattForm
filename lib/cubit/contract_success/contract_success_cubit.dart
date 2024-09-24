import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:nowproject/Models/contract_success/contract_success/contract_success.dart';
import 'package:nowproject/cubit/contract_success/contract_success_state.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';


class ContractSuccessCubit extends Cubit<ContractState> {
  final FirstStepCubit firstStepCubit;
  ContractSuccessCubit({required this.firstStepCubit})
      : super(ContractSuccessInitial());

  void getFixedPackage(String id , String type) async {
    try {
      emit(ContractSuccessLoading());

      final contractJson =
          await firstStepCubit.fetchContractSuccess(id: id , type: type);

      if (contractJson != null) {
        final contractSuccess = ContractSuccess.fromJson(contractJson);

        if (contractSuccess.data != null &&
            contractSuccess.data!.paymentCredintials != null) {
          emit(ContractSuccessListUpdate(
              contractSuccess: contractSuccess));
        } else {
          emit(ContractSuccessFailure(error: 'خطا في العقد'));
        }
      } else {
        emit(ContractSuccessFailure(error: 'هناك خطأ ما'));
      }
    } catch (e, s) {
      log('Error: $e\nStackTrace: $s');
      emit(ContractSuccessFailure(error: 'هناك خطأ ما: $e'));
    }
  }
}
