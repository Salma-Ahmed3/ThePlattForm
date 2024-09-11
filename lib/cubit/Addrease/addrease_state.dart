import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/model_addrease/model_addrease.dart';

// Default empty MainLocation to avoid repetition
ModelAddrease defaultMainLocation = ModelAddrease(
);

abstract class SavedAddressState extends Equatable {
  final ModelAddrease modelAddrease;
  final bool change;

  const SavedAddressState({required this.modelAddrease, this.change = false});

  @override
  List<Object?> get props => [modelAddrease, change];
}

class SavedAddressLoading extends SavedAddressState {
  SavedAddressLoading()
      : super(modelAddrease: defaultMainLocation, change: false);
}

class SavedAddressInitial extends SavedAddressState {
  SavedAddressInitial()
      : super(modelAddrease: defaultMainLocation, change: false);
}

class SavedAddressSuccess extends SavedAddressState {
  const SavedAddressSuccess(
      {required ModelAddrease modeladdrease, bool change = false})
      : super(modelAddrease: modeladdrease, change: change);
}

class SavedAddressFailure extends SavedAddressState {
  final String error;

  SavedAddressFailure({required this.error})
      : super(modelAddrease: defaultMainLocation, change: false);

  @override
  List<Object?> get props => [error, modelAddrease, change];
}

class SavedAddressUpdate extends SavedAddressState {
  const SavedAddressUpdate(
      {required ModelAddrease modeladdrease, bool change = false})
      : super(modelAddrease: modeladdrease, change: change);
}
