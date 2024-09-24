import 'package:equatable/equatable.dart';

class PaymentCredintials extends Equatable {
  final String? contactId;
  final String? contactName;
  final String? sequenceNumber;
  final double? finalPrice;

  const PaymentCredintials({
    this.contactId,
    this.contactName,
    this.sequenceNumber,
    this.finalPrice,
  });

  factory PaymentCredintials.fromJson(Map<String, dynamic> json) {
    return PaymentCredintials(
      contactId: json['contactId'] as String?,
      contactName: json['contactName'] as String?,
      sequenceNumber: json['sequenceNumber'] as String?,
      finalPrice: (json['finalPrice'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'contactId': contactId,
        'contactName': contactName,
        'sequenceNumber': sequenceNumber,
        'finalPrice': finalPrice,
      };

  @override
  List<Object?> get props {
    return [
      contactId,
      contactName,
      sequenceNumber,
      finalPrice,
    ];
  }
}
