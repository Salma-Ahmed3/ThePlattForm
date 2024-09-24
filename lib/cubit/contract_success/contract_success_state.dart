import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/contract_success/contract_success/contract_success.dart';
import 'package:nowproject/Models/contract_success/contract_success/data.dart';

ContractSuccess defaultcontract = ContractSuccess();

abstract class ContractState extends Equatable {
  final ContractSuccess contract;

  const ContractState({required this.contract});

  @override
  List<Object?> get props => [contract];
}

class ContractSuccessLoading extends ContractState {
  ContractSuccessLoading() : super(contract: defaultcontract);
}

class ContractSuccessInitial extends ContractState {
  ContractSuccessInitial() : super(contract: defaultcontract);
}

class ContractSuccessSuccess extends ContractState {
  const ContractSuccessSuccess({required ContractSuccess contract})
      : super(
          contract: contract
        );
}

class ContractSuccessFailure extends ContractState {
  final String error;

  ContractSuccessFailure({required this.error})
      : super(
          contract: defaultcontract,
        );

  @override
  List<Object?> get props => [error, contract];
}

class ContractSuccessUpdate extends ContractState {
  const ContractSuccessUpdate({required ContractSuccess contract})
      : super(
          contract: contract,
        );
}

class ContractSuccessListUpdate extends ContractState {
  final ContractSuccess contractSuccess;

  ContractSuccessListUpdate({required this.contractSuccess})
      : super(
          contract:
              ContractSuccess(data: Data(
              paymentCredintials: contractSuccess.data?.paymentCredintials,
              )),
        );

  @override
  List<Object?> get props => [contractSuccess, contract];
}

