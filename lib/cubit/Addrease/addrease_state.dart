
import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/address/saved_address.dart';

abstract class SavedAddressState extends Equatable {
  final SavedAddressClass? savedAddressClass;
  final bool? change;
  const SavedAddressState({this.savedAddressClass, this.change});
}

class SavedAddressLoading extends SavedAddressState {
  SavedAddressLoading() : super(savedAddressClass: SavedAddressClass(), change: false);
  @override
  List<Object?> get props => [savedAddressClass, change];
}
class SavedAddressInitial extends SavedAddressState {
  SavedAddressInitial() : super(savedAddressClass: SavedAddressClass(), change: false);
  @override
  List<Object?> get props => [savedAddressClass, change];
}



class SavedAddressSuccess extends SavedAddressState {
  const SavedAddressSuccess({SavedAddressClass? savedAddressClass, bool? change})
      : super(savedAddressClass: savedAddressClass, change: change);
  @override
  List<Object?> get props => [savedAddressClass, change];
}

class SavedAddressFailure extends SavedAddressState {
  final String error;
  SavedAddressFailure({required this.error}) : super(savedAddressClass: SavedAddressClass(), change: false);
  @override
  List<Object?> get props => [error, savedAddressClass, change];
}
class SavedAddressUpdate extends SavedAddressState {
  const SavedAddressUpdate({SavedAddressClass? savedAddressClass, bool? change})
      : super(savedAddressClass: savedAddressClass, change: change);
  @override
  List<Object?> get props => [savedAddressClass, change];
}
