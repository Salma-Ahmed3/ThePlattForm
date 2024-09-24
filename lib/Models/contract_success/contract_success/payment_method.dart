import 'package:equatable/equatable.dart';

class PaymentMethod extends Equatable {
  final String? brandName;
  final String? imageUrl;
  final int? order;

  const PaymentMethod({this.brandName, this.imageUrl, this.order});

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => PaymentMethod(
        brandName: json['brandName'] as String?,
        imageUrl: json['imageUrl'] as String?,
        order: json['order'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'brandName': brandName,
        'imageUrl': imageUrl,
        'order': order,
      };

  @override
  List<Object?> get props => [brandName, imageUrl, order];
}
