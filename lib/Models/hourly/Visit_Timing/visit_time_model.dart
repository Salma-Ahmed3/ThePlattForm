import 'package:equatable/equatable.dart';

class VisitTimeModel extends Equatable {
  final String? data;

  const VisitTimeModel({
    this.data,
  });

  factory VisitTimeModel.fromJson(Map<String, dynamic> json) {
    return VisitTimeModel(
      data: json['data'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data,
      };

  @override
  List<Object?> get props => [data];
}
