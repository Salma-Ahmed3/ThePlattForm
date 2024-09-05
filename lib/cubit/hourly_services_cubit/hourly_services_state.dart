
import 'package:flutter/material.dart';


@immutable
sealed class HourlyServicesState {}

final class HourlyServicesInitial extends HourlyServicesState {}

final class HourlyServicesLoading extends HourlyServicesState {}

final class HourlyServicesSuccess extends HourlyServicesState {
  final String message;

  HourlyServicesSuccess({ required this.message});
}
final class HourlyServicesFailuer extends HourlyServicesState {
  final String error;

  HourlyServicesFailuer({ required this.error});
}

