import 'package:equatable/equatable.dart';

import 'data.dart';

class FixedPackageModel extends Equatable {
  final Data? data;

  const FixedPackageModel({this.data});

  factory FixedPackageModel.fromJson(Map<String, dynamic> json) {
    return FixedPackageModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
      };

  @override
  List<Object?> get props => [data];
}
