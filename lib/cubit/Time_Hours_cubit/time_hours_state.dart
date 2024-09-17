import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/hourly/time_hours/time_hours.dart';

TimeHours defaultTime = const TimeHours();

abstract class TimeHoursState extends Equatable {
  final TimeHours timeHours;

  const TimeHoursState({required this.timeHours});

  @override
  List<Object?> get props => [TimeHours];
}

class TimeLoading extends TimeHoursState {
  TimeLoading() : super(timeHours: defaultTime);
}

class TimeInitial extends TimeHoursState {
  TimeInitial() : super(timeHours: defaultTime);
}

class TimeSuccess extends TimeHoursState {
  const TimeSuccess({required TimeHours Time}) : super(timeHours: Time);
}

class TimeFailure extends TimeHoursState {
  final String error;

  TimeFailure({required this.error}) : super(timeHours: defaultTime);

  @override
  List<Object?> get props => [error, TimeHours];
}

class TimeUpdate extends TimeHoursState {
  const TimeUpdate({required TimeHours Time}) : super(timeHours: Time);
}

class TimeListUpdate extends TimeHoursState {
  final List<TimeHours> timeHour;

  TimeListUpdate({required this.timeHour}) : super(timeHours: defaultTime);
}
