import 'package:equatable/equatable.dart';

class PeriodModel extends Equatable {
  final int? key;
  final String? value;
  final String? image;

  const PeriodModel({this.key, this.value, this.image});

  factory PeriodModel.fromJson(Map<String, dynamic> json) => PeriodModel(
        key: json['key'] as int?,
        value: json['value'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'value': value,
        'image': image,
      };

  @override
  List<Object?> get props => [key, value, image];
}
