import 'package:equatable/equatable.dart';
import 'package:nowproject/Models/nationality/nationality.dart';

Nationality defaultNationality = const Nationality();

abstract class NationalityState extends Equatable {
  final Nationality nationality;

  const NationalityState({required this.nationality});

  @override
  List<Object?> get props => [nationality];
}

class NationalityLoading extends NationalityState {
  NationalityLoading() : super(nationality: defaultNationality);
}

class NationalityInitial extends NationalityState {
  NationalityInitial() : super(nationality: defaultNationality);
}

class NationalitySuccess extends NationalityState {
  const NationalitySuccess(
      {required Nationality nationality})
      : super(nationality: nationality);
}

class NationalityFailure extends NationalityState {
  final String error;

  NationalityFailure({required this.error})
      : super(nationality: defaultNationality);

  @override
  List<Object?> get props => [error, nationality];
}

class NationalityUpdate extends NationalityState {
  const NationalityUpdate(
      {required Nationality nationality})
      : super(nationality: nationality);
}
class NationalityListUpdate extends NationalityState {
  final List<Nationality> nationalities;

  NationalityListUpdate({required this.nationalities}) : super(nationality: defaultNationality);
}
