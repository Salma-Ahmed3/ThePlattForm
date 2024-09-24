import 'package:equatable/equatable.dart';

import 'payment_credintials.dart';
import 'payment_method.dart';

class Data extends Equatable {
  final int? gatway;
  final PaymentCredintials? paymentCredintials;
  final bool? isbankTransferAvailable;
  final List<PaymentMethod>? paymentMethods;

  const Data({
    this.gatway,
    this.paymentCredintials,
    this.isbankTransferAvailable,
    this.paymentMethods,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        gatway: json['gatway'] as int?,
        paymentCredintials: json['paymentCredintials'] == null
            ? null
            : PaymentCredintials.fromJson(
                json['paymentCredintials'] as Map<String, dynamic>),
        isbankTransferAvailable: json['isbankTransferAvailable'] as bool?,
        paymentMethods: (json['paymentMethods'] as List<dynamic>?)
            ?.map((e) => PaymentMethod.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'gatway': gatway,
        'paymentCredintials': paymentCredintials?.toJson(),
        'isbankTransferAvailable': isbankTransferAvailable,
        'paymentMethods': paymentMethods?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      gatway,
      paymentCredintials,
      isbankTransferAvailable,
      paymentMethods,
    ];
  }
}
