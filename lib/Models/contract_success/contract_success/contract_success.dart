import 'package:equatable/equatable.dart';

import 'data.dart';

class ContractSuccess extends Equatable {
  final Data? data;
  final int? status;
  final dynamic code;
  final dynamic message;
  final dynamic location;

  const ContractSuccess({
    this.data,
    this.status,
    this.code,
    this.message,
    this.location,
  });

  factory ContractSuccess.fromJson(Map<String, dynamic> json) {
    return ContractSuccess(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as int?,
      code: json['code'] as dynamic,
      message: json['message'] as dynamic,
      location: json['location'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
        'status': status,
        'code': code,
        'message': message,
        'location': location,
      };

  @override
  List<Object?> get props => [data, status, code, message, location];
}
