part of 'hourly_services_cubit.dart';

class HourlyServicesState extends Equatable {
  const HourlyServicesState();

  @override
  List<Object?> get props => [];
}

class HourlyServicesInitial extends HourlyServicesState {}

class HourlyServicesLoading extends HourlyServicesState {}

class HourlyServicesSuccess extends HourlyServicesState {
  final List<Service> services;

  const HourlyServicesSuccess({required this.services});

  @override
  List<Object?> get props => [services];
}

class HourlyServicesFailure extends HourlyServicesState {
  final String error;

  const HourlyServicesFailure({required this.error});

  @override
  List<Object?> get props => [error];
}
