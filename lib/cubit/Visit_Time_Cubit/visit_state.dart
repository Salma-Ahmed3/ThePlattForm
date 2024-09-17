import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/hourly/Visit_Timing/visit_time_model.dart';

VisitTimeModel defaultVisitTime = const VisitTimeModel();

abstract class TimeVisitState extends Equatable {
  final VisitTimeModel visitTimeModel;

  const TimeVisitState({required this.visitTimeModel});

  @override
  List<Object?> get props => [visitTimeModel];
}

class VisitTimeLoading extends TimeVisitState {
  VisitTimeLoading() : super(visitTimeModel: defaultVisitTime);
}

class VisitTimeInitial extends TimeVisitState {
  VisitTimeInitial() : super(visitTimeModel: defaultVisitTime);
}

class VisitTimeSuccess extends TimeVisitState {
  const VisitTimeSuccess({required VisitTimeModel VisitTime})
      : super(visitTimeModel: VisitTime);
}

class VisitTimeFailure extends TimeVisitState {
  final String error;

  VisitTimeFailure({required this.error})
      : super(visitTimeModel: defaultVisitTime);

  @override
  List<Object?> get props => [error, visitTimeModel];
}

class VisitTimeUpdate extends TimeVisitState {
  const VisitTimeUpdate({required VisitTimeModel VisitTime})
      : super(visitTimeModel: VisitTime);
}

class VisitTimeListUpdate extends TimeVisitState {
  final List<VisitTimeModel> visitTimeModels;

  VisitTimeListUpdate({required this.visitTimeModels})
      : super(visitTimeModel: defaultVisitTime);
}
