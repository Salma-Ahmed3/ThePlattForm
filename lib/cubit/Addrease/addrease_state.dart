
import 'package:equatable/equatable.dart';

import '../../Models/address/saved_address.dart';

class AddreaseState extends Equatable {
  const AddreaseState();

  @override
  List<Object?> get props => [];
}

class AddreaseInitial extends AddreaseState {}

class AddreaseLoading extends AddreaseState {}

class AddreaseSuccess extends AddreaseState {
  final List<SavedAddressClass> addrease;

  const AddreaseSuccess ({required this.addrease});

  @override
  List<Object?> get props => [addrease];
}

class AddreaseFailure extends AddreaseState {
  final String error;

  const AddreaseFailure({required this.error});

  @override
  List<Object?> get props => [error];
}
