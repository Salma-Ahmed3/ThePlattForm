import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/hourly/Period_time/period_model/datum.dart';

PeriodModel defaultPeriod = const PeriodModel();

abstract class PeriodState extends Equatable {
  final PeriodModel periodModel;

  const PeriodState({required this.periodModel});

  @override
  List<Object?> get props => [periodModel];
}

class PeriodLoading extends PeriodState {
  PeriodLoading() : super(periodModel: defaultPeriod);
}

class PeriodInitial extends PeriodState {
  PeriodInitial() : super(periodModel: defaultPeriod);
}

class PeriodSuccess extends PeriodState {
  const PeriodSuccess({required PeriodModel period})
      : super(periodModel: period);
}

class PeriodFailure extends PeriodState {
  final String error;

  PeriodFailure({required this.error}) : super(periodModel: defaultPeriod);

  @override
  List<Object?> get props => [error, periodModel];
}

class PeriodUpdate extends PeriodState {
  const PeriodUpdate({required PeriodModel period})
      : super(periodModel: period);
}

class PeriodListUpdate extends PeriodState {
  final List<PeriodModel> periodmodel;

  PeriodListUpdate({required this.periodmodel})
      : super(periodModel: defaultPeriod);
}
