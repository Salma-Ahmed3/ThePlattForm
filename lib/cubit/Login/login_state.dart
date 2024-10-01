import 'package:flutter/material.dart';
import 'package:nowproject/Models/authentication/user_data.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final String message;
  final String crmUserId; 
  final String token; 
  // final UserData userData;
  LoginSuccess(
    {  
    // required this.userData,
    required this.token,
    required this.message,
    required this.crmUserId,  
  });
}


final class LoginFailuer extends LoginState {
  final String error;

  LoginFailuer({required this.error});
}
