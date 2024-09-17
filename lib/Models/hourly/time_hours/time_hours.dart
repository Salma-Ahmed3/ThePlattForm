import 'package:equatable/equatable.dart';

class TimeHours extends Equatable {
  final int? key;
  final String? value;

  const TimeHours({this.key, this.value});

  factory TimeHours.fromJson(Map<String, dynamic> json) => TimeHours(
        key: json['key'] as int?,
        value: json['value'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'value': value,
      };

  @override
  List<Object?> get props => [key, value];
}
