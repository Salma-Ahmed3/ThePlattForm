import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/address/saved_address.dart';

// Default empty MainLocation to avoid repetition
MainLocation defaultMainLocation = MainLocation(

  

);

abstract class SavedAddressState extends Equatable {
  final MainLocation mainLocation;
  final bool change;

  const SavedAddressState({required this.mainLocation, this.change = false});

  @override
  List<Object?> get props => [mainLocation, change];
}

class SavedAddressLoading extends SavedAddressState {
  SavedAddressLoading() : super(mainLocation: defaultMainLocation, change: false);
}

class SavedAddressInitial extends SavedAddressState {
  SavedAddressInitial() : super(mainLocation: defaultMainLocation, change: false);
}

class SavedAddressSuccess extends SavedAddressState {
  const SavedAddressSuccess({required MainLocation mainLocation, bool change = false})
      : super(mainLocation: mainLocation, change: change);
}

class SavedAddressFailure extends SavedAddressState {
  final String error;

  SavedAddressFailure({required this.error})
      : super(mainLocation: defaultMainLocation, change: false);

  @override
  List<Object?> get props => [error, mainLocation, change];
}

class SavedAddressUpdate extends SavedAddressState {
  const SavedAddressUpdate({required MainLocation mainLocation, bool change = false})
      : super(mainLocation: mainLocation, change: change);
}
