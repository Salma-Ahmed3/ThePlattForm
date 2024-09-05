// import 'package:equatable/equatable.dart';
// import 'package:nowproject/Models/authentication/user_data.dart';



// abstract class UserState extends Equatable {
//   final User? userData;
//   final bool? change;
//   const UserState({this.change, this.userData});
// }

// class UserInitial extends UserState {
//   UserInitial() : super(change: true, userData: User());
//   @override
//   List<Object?> get props => [userData,change];
// }

// class UserUpdate extends UserState {
//   const UserUpdate(bool change, User? userData)
//       : super(change: true, userData: userData);
//   @override
//    List<Object?> get props => [userData,change];
// }

// class UserLogOut extends UserState {
//   const UserLogOut(bool change, User userData)
//       : super(change: true, userData: userData);
//   @override
//    List<Object?> get props => [userData,change];
// }


// class UserGetTrans extends UserState {
//   const UserGetTrans({bool? change ,  User? userData})
//       : super(change: change, userData: userData );
//   @override
//   List<Object?> get props => [userData,change];
// }

// class UserGetTransException extends UserState {
//   const UserGetTransException({bool? change ,  User? userData})
//       : super(change: change, userData: userData );
//   @override
//   List<Object?> get props => [userData,change];
// }