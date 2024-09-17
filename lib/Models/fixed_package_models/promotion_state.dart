import 'package:equatable/equatable.dart';

class PromotionState extends Equatable {
  final String? promotionName;
  final int? promotionStatus;
  final dynamic promotionValidationDescription;

  const PromotionState({
    this.promotionName,
    this.promotionStatus,
    this.promotionValidationDescription,
  });

  factory PromotionState.fromJson(Map<String, dynamic> json) {
    return PromotionState(
      promotionName: json['promotionName'] as String?,
      promotionStatus: json['promotionStatus'] as int?,
      promotionValidationDescription:
          json['promotionValidationDescription'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'promotionName': promotionName,
        'promotionStatus': promotionStatus,
        'promotionValidationDescription': promotionValidationDescription,
      };

  @override
  List<Object?> get props {
    return [
      promotionName,
      promotionStatus,
      promotionValidationDescription,
    ];
  }
}
