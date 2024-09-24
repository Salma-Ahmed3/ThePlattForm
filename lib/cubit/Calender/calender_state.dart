import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/Calender/calender_model.dart';

CalenderModel defaultCalender = CalenderModel();

abstract class CalenderState extends Equatable {
  final CalenderModel calenderModel;

  const CalenderState({required this.calenderModel});

  @override
  List<Object?> get props => [calenderModel];
}

class CalenderLoading extends CalenderState {
  CalenderLoading() : super(calenderModel: defaultCalender);
}

class CalenderInitial extends CalenderState {
  CalenderInitial() : super(calenderModel: defaultCalender);
}

class CalenderSuccess extends CalenderState {
  const CalenderSuccess({required CalenderModel calenderModel})
      : super(
          calenderModel: calenderModel,
        );
}

class CalenderFailure extends CalenderState {
  final String error;

  CalenderFailure({required this.error})
      : super(
          calenderModel: defaultCalender,
        );

  @override
  List<Object?> get props => [error, calenderModel];
}

class CalenderUpdate extends CalenderState {
  const CalenderUpdate({required CalenderModel calenderModel})
      : super(
          calenderModel: calenderModel,
        );
}

class CalenderListUpdate extends CalenderState {
  final List<CalenderModel> calenderDays;

  CalenderListUpdate({required this.calenderDays})
      : super(
          calenderModel: calenderDays.isNotEmpty
              ? calenderDays.first
              : CalenderModel(), // Ensuring valid model
        );

  @override
  List<Object?> get props => [calenderDays, calenderModel];
}
