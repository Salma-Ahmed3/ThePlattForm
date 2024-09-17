// import 'promotion_state.dart';

// class SelectedPackage {
//   String? selectedHourlyPricingId;
//   String? displayName;
//   String? serviceId;
//   String? resourceGroupId;
//   String? resourceGroupName;
//   int? employeeNumber;
//   String? employeeNumberName;
//   int? hoursNumber;
//   int? weeklyVisits;
//   String? weeklyVisitName;
//   int? contractDuration;
//   String? contractDurationName;
//   int? visitShift;
//   String? visitShiftName;
//   String? timeSlotId;
//   String? timeSlotDisplayName;
//   String? promotionCodeId;
//   String? promotionCode;
//   String? promotionCodeDescription;
//   double? oneVisitPrice;
//   int? totalVisits;
//   int? visitHours;
//   bool? isAvaliable;
//   int? packagePrice;
//   double? totalPriceWithVatBeforePromotion;
//   int? packagePercentDiscount;
//   int? packageDiscountAmount;
//   int? packagePriceAfterPackageDiscount;
//   double? promotionTotalDiscountAmount;
//   double? promotionTotalDiscountPercent;
//   double? totalDiscountPercent;
//   double? totalDiscountAmount;
//   double? priceAfterTotalDiscount;
//   int? freeVisitsCount;
//   dynamic promotionEndDate;
//   PromotionState? promotionState;
//   int? vatRate;
//   double? vatAmount;
//   double? finalPrice;
//   List<dynamic>? promotionOfferList;

//   SelectedPackage({
//     this.selectedHourlyPricingId,
//     this.displayName,
//     this.serviceId,
//     this.resourceGroupId,
//     this.resourceGroupName,
//     this.employeeNumber,
//     this.employeeNumberName,
//     this.hoursNumber,
//     this.weeklyVisits,
//     this.weeklyVisitName,
//     this.contractDuration,
//     this.contractDurationName,
//     this.visitShift,
//     this.visitShiftName,
//     this.timeSlotId,
//     this.timeSlotDisplayName,
//     this.promotionCodeId,
//     this.promotionCode,
//     this.promotionCodeDescription,
//     this.oneVisitPrice,
//     this.totalVisits,
//     this.visitHours,
//     this.isAvaliable,
//     this.packagePrice,
//     this.totalPriceWithVatBeforePromotion,
//     this.packagePercentDiscount,
//     this.packageDiscountAmount,
//     this.packagePriceAfterPackageDiscount,
//     this.promotionTotalDiscountAmount,
//     this.promotionTotalDiscountPercent,
//     this.totalDiscountPercent,
//     this.totalDiscountAmount,
//     this.priceAfterTotalDiscount,
//     this.freeVisitsCount,
//     this.promotionEndDate,
//     this.promotionState,
//     this.vatRate,
//     this.vatAmount,
//     this.finalPrice,
//     this.promotionOfferList,
//   });

//   factory SelectedPackage.fromJson(Map<String, dynamic> json) {
//     return SelectedPackage(
//       selectedHourlyPricingId: json['selectedHourlyPricingId'] as String?,
//       displayName: json['displayName'] as String?,
//       serviceId: json['serviceId'] as String?,
//       resourceGroupId: json['resourceGroupId'] as String?,
//       resourceGroupName: json['resourceGroupName'] as String?,
//       employeeNumber: json['employeeNumber'] as int?,
//       employeeNumberName: json['employeeNumberName'] as String?,
//       hoursNumber: json['hoursNumber'] as int?,
//       weeklyVisits: json['weeklyVisits'] as int?,
//       weeklyVisitName: json['weeklyVisitName'] as String?,
//       contractDuration: json['contractDuration'] as int?,
//       contractDurationName: json['contractDurationName'] as String?,
//       visitShift: json['visitShift'] as int?,
//       visitShiftName: json['visitShiftName'] as String?,
//       timeSlotId: json['timeSlotId'] as String?,
//       timeSlotDisplayName: json['timeSlotDisplayName'] as String?,
//       promotionCodeId: json['promotionCodeId'] as String?,
//       promotionCode: json['promotionCode'] as String?,
//       promotionCodeDescription: json['promotionCodeDescription'] as String?,
//       oneVisitPrice: (json['oneVisitPrice'] as num?)?.toDouble(),
//       totalVisits: json['totalVisits'] as int?,
//       visitHours: json['visitHours'] as int?,
//       isAvaliable: json['isAvaliable'] as bool?,
//       packagePrice: json['packagePrice'] as int?,
//       totalPriceWithVatBeforePromotion:
//           (json['totalPriceWithVatBeforePromotion'] as num?)?.toDouble(),
//       packagePercentDiscount: json['packagePercentDiscount'] as int?,
//       packageDiscountAmount: json['packageDiscountAmount'] as int?,
//       packagePriceAfterPackageDiscount:
//           json['packagePriceAfterPackageDiscount'] as int?,
//       promotionTotalDiscountAmount:
//           (json['promotionTotalDiscountAmount'] as num?)?.toDouble(),
//       promotionTotalDiscountPercent:
//           (json['promotionTotalDiscountPercent'] as num?)?.toDouble(),
//       totalDiscountPercent: (json['totalDiscountPercent'] as num?)?.toDouble(),
//       totalDiscountAmount: (json['totalDiscountAmount'] as num?)?.toDouble(),
//       priceAfterTotalDiscount:
//           (json['priceAfterTotalDiscount'] as num?)?.toDouble(),
//       freeVisitsCount: json['freeVisitsCount'] as int?,
//       promotionEndDate: json['promotionEndDate'] as dynamic,
//       promotionState: json['promotionState'] == null
//           ? null
//           : PromotionState.fromJson(
//               json['promotionState'] as Map<String, dynamic>),
//       vatRate: json['vatRate'] as int?,
//       vatAmount: (json['vatAmount'] as num?)?.toDouble(),
//       finalPrice: (json['finalPrice'] as num?)?.toDouble(),
//       promotionOfferList: json['promotionOfferList'] as List<dynamic>?,
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'selectedHourlyPricingId': selectedHourlyPricingId,
//         'displayName': displayName,
//         'serviceId': serviceId,
//         'resourceGroupId': resourceGroupId,
//         'resourceGroupName': resourceGroupName,
//         'employeeNumber': employeeNumber,
//         'employeeNumberName': employeeNumberName,
//         'hoursNumber': hoursNumber,
//         'weeklyVisits': weeklyVisits,
//         'weeklyVisitName': weeklyVisitName,
//         'contractDuration': contractDuration,
//         'contractDurationName': contractDurationName,
//         'visitShift': visitShift,
//         'visitShiftName': visitShiftName,
//         'timeSlotId': timeSlotId,
//         'timeSlotDisplayName': timeSlotDisplayName,
//         'promotionCodeId': promotionCodeId,
//         'promotionCode': promotionCode,
//         'promotionCodeDescription': promotionCodeDescription,
//         'oneVisitPrice': oneVisitPrice,
//         'totalVisits': totalVisits,
//         'visitHours': visitHours,
//         'isAvaliable': isAvaliable,
//         'packagePrice': packagePrice,
//         'totalPriceWithVatBeforePromotion': totalPriceWithVatBeforePromotion,
//         'packagePercentDiscount': packagePercentDiscount,
//         'packageDiscountAmount': packageDiscountAmount,
//         'packagePriceAfterPackageDiscount': packagePriceAfterPackageDiscount,
//         'promotionTotalDiscountAmount': promotionTotalDiscountAmount,
//         'promotionTotalDiscountPercent': promotionTotalDiscountPercent,
//         'totalDiscountPercent': totalDiscountPercent,
//         'totalDiscountAmount': totalDiscountAmount,
//         'priceAfterTotalDiscount': priceAfterTotalDiscount,
//         'freeVisitsCount': freeVisitsCount,
//         'promotionEndDate': promotionEndDate,
//         'promotionState': promotionState?.toJson(),
//         'vatRate': vatRate,
//         'vatAmount': vatAmount,
//         'finalPrice': finalPrice,
//         'promotionOfferList': promotionOfferList,
//       };
// }
