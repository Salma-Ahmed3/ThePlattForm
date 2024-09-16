import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/address/saved_address.dart';

SavedAddressClass defaultMainLocation =
    SavedAddressClass(mainLocations: null, subLocation: []);

abstract class SavedAddressState extends Equatable {
  final SavedAddressClass mainLocation;
  final bool change;

  const SavedAddressState({required this.mainLocation, this.change = false});

  @override
  List<Object?> get props => [mainLocation, change];
}

class SavedAddressLoading extends SavedAddressState {
  SavedAddressLoading()
      : super(mainLocation: defaultMainLocation, change: false); 
}

class SavedAddressInitial extends SavedAddressState {
  SavedAddressInitial()
      : super(mainLocation: defaultMainLocation, change: false);
}

class SavedAddressSuccess extends SavedAddressState {
  const SavedAddressSuccess(
      {required SavedAddressClass mainLocation, bool change = false})
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
  const SavedAddressUpdate(
      {required SavedAddressClass mainLocation, bool change = false})
      : super(mainLocation: mainLocation, change: change);
}
