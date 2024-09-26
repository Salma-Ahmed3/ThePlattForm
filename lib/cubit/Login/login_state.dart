import 'package:flutter/material.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final String message;
  final String crmUserId; 

  LoginSuccess({
    required this.message,
    required this.crmUserId,  
  });
}


final class LoginFailuer extends LoginState {
  final String error;

  LoginFailuer({required this.error});
}
