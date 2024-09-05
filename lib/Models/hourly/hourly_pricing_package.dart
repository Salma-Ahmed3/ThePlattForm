// ignore_for_file: unnecessary_null_in_if_null_operators, prefer_null_aware_operators

class HourlyPricingPackage {
  HourlyPricingPackage({
    this.hourlyPackages,
    this.packageProperties,
  });

  List<HourlyPackage>? hourlyPackages;
  String? packageProperties;

  factory HourlyPricingPackage.fromJson(Map<String, dynamic> json) => HourlyPricingPackage(
    hourlyPackages: json["hourlyPackages"] == null ? [] : List<HourlyPackage>.from(json["hourlyPackages"].map((x) => HourlyPackage.fromJson(x))),
    packageProperties: json["packageProperties"] == null ? null : json["packageProperties"].toString().replaceAll("'", '"'),

  );

  Map<String, dynamic> toJson() => {
    "hourlyPackages": hourlyPackages == null ? null : List<dynamic>.from(hourlyPackages!.map((x) => x.toJson())),
    "packageProperties": packageProperties ?? null,
  };
}

class HourlyPackage {
  HourlyPackage({
    this.hourPrice,
    this.hourlypricingId,
    this.packageDisplayName,
    this.resourceGroupId,
    this.resourceGroupName,
    this.isAvailable,
    this.isResourcesAvailable,
    this.promotionCode,
    this.availableDays,
    this.isAvaliableForShift,
    this.visitShift,
    this.promotionState,
    this.packagePrice,
    this.packageDiscountAmount,
    this.packageDiscountPercent,
    this.packagePriceAfterPackageDiscount,
    this.promotionDiscountAmount,
    this.promotionDiscountPercent,
    this.totalPromotionDiscountPercent,
    this.totalPromotionDiscountAmount,
    this.packagePriceAfterTotalDiscount,
    this.promotionFreeVisitsCount,
    this.promotionFreeEmployeesCount,
    this.vatAmount,
    this.packagePriceAfterDiscountWithVat,
    this.vatRate,
    this.finalPrice,
    this.state = false ,
    this.promotionOfferList,
    this.totalDiscountAmount,
    this.totalDiscountPercent,
  });
  double? totalDiscountPercent;
  double? totalDiscountAmount;

  dynamic hourPrice;
  String? hourlypricingId;
  String? packageDisplayName;
  dynamic resourceGroupId;
  dynamic resourceGroupName;
  bool? isAvailable;
  bool? isResourcesAvailable;
  dynamic promotionCode;
  List<String>? availableDays;
  bool? isAvaliableForShift;
  dynamic visitShift;
  PromotionState? promotionState;
  dynamic packagePrice;
  dynamic packageDiscountAmount;
  dynamic packageDiscountPercent;
  dynamic packagePriceAfterPackageDiscount;
  dynamic packagePriceAfterDiscountWithVat;
  dynamic promotionDiscountAmount;
  dynamic promotionDiscountPercent;
  dynamic totalPromotionDiscountPercent;
  dynamic totalPromotionDiscountAmount;
  dynamic packagePriceAfterTotalDiscount;
  dynamic promotionFreeVisitsCount;
  dynamic promotionFreeEmployeesCount;
  dynamic vatAmount;
  dynamic vatRate;
  dynamic finalPrice;
  bool? state;
  List<HourlyPackagePromotionOfferList?>? promotionOfferList;

   HourlyPackage.fromJson(Map<String, dynamic> json) {
     state = false;
    hourPrice= json["hourPrice"] ?? null;
    hourlypricingId= json["hourlypricingId"] ?? null;
    packageDisplayName= json["packageDisplayName"] ?? null;
    resourceGroupId= json["resourceGroupId"];
    resourceGroupName= json["resourceGroupName"];
    isAvailable= json["isAvailable"] ?? false;
    isResourcesAvailable= json["isResourcesAvailable"] ?? null;
    promotionCode= json["promotionCode"];
    availableDays= json["availableDays"] == null ? null : List<String>.from(json["availableDays"].map((x) => x));
    isAvaliableForShift= json["isAvaliableForShift"] ?? null;
    visitShift= json["visitShift"] ?? null;
    promotionState= json["promotionState"] == null ? null:PromotionState.fromJson(json["promotionState"]);
    packagePrice= json["packagePrice"] ?? 0;
    packageDiscountAmount= json["packageDiscountAmount"] ?? 0;
    packageDiscountPercent= json["packageDiscountPercent"] ?? 0;
    packagePriceAfterPackageDiscount= json["packagePriceAfterPackageDiscount"] ?? 0;
     packagePriceAfterDiscountWithVat= json["packagePriceAfterPackageDiscountWithVat"] ?? 0;
    promotionDiscountAmount= json["promotionDiscountAmount"] ?? 0;
    promotionDiscountPercent= json["promotionDiscountPercent"];
    totalPromotionDiscountPercent= json["totalPromotionDiscountPercent"];
    totalPromotionDiscountAmount= json["totalPromotionDiscountAmount"] ?? 0;
    packagePriceAfterTotalDiscount= json["packagePriceAfterTotalDiscount"] ?? 0;
    promotionFreeVisitsCount= json["promotionFreeVisitsCount"] ?? 0;
    promotionFreeEmployeesCount= json["promotionFreeEmployeesCount"] ?? 0;
    vatAmount= json["vatAmount"] == null ? 0 : json["vatAmount"].toDouble();
    vatRate= json["vatRate"] ?? 0;
    finalPrice= json["finalPrice"] == null ? 0 : json["finalPrice"].toDouble();
    totalDiscountAmount= json["totalDiscountAmount"] == null ? null : json["totalDiscountAmount"].toDouble();
    totalDiscountPercent= json["totalDiscountPercent"] == null ? null : json["totalDiscountPercent"].toDouble();
  if(json['promotionOfferList'] != null) {
  final v = json['promotionOfferList'];
  final arr0 = <HourlyPackagePromotionOfferList>[];
  v.forEach((v) {
  arr0.add(HourlyPackagePromotionOfferList.fromJson(v));
  });
  promotionOfferList = arr0;
}
   }

  Map<String, dynamic> toJson() => {
    "hourPrice": hourPrice ?? null,
    "hourlypricingId": hourlypricingId ?? null,
    "packageDisplayName": packageDisplayName ?? null,
    "resourceGroupId": resourceGroupId,
    "resourceGroupName": resourceGroupName,
    "isAvailable": isAvailable ?? null,
    "isResourcesAvailable": isResourcesAvailable ?? null,
    "promotionCode": promotionCode,
    "availableDays": availableDays == null ? null : List<dynamic>.from(availableDays!.map((x) => x)),
    "isAvaliableForShift": isAvaliableForShift ?? null,
    "visitShift": visitShift ?? null,
    "promotionState": promotionState == null ? null : promotionState!.toJson(),
    "packagePrice": packagePrice ?? null,
    "packageDiscountAmount": packageDiscountAmount ?? null,
    "packageDiscountPercent": packageDiscountPercent ?? null,
    "packagePriceAfterPackageDiscount": packagePriceAfterPackageDiscount ?? null,
    "promotionDiscountAmount": promotionDiscountAmount ?? null,
    "promotionDiscountPercent": promotionDiscountPercent,
    "totalPromotionDiscountPercent": totalPromotionDiscountPercent,
    "totalPromotionDiscountAmount": totalPromotionDiscountAmount ?? null,
    "packagePriceAfterTotalDiscount": packagePriceAfterTotalDiscount ?? null,
    "promotionFreeVisitsCount": promotionFreeVisitsCount ?? null,
    "promotionFreeEmployeesCount": promotionFreeEmployeesCount ?? null,
    "vatAmount": vatAmount ?? null,
    "vatRate": vatRate ?? null,
    "finalPrice": finalPrice ?? null,
  };
}
class PromotionState {
  PromotionState({
    this.promotionName,
    this.promotionStatus,
    this.promotionValidationDescription
  });

  String? promotionName;
  int? promotionStatus;
  List<String>?promotionValidationDescription;

  factory PromotionState.fromJson(Map<String, dynamic> json) => PromotionState(
    promotionName: json["promotionName"] ?? null,
    promotionStatus: json["promotionStatus"] ?? null,
    promotionValidationDescription : json['promotionValidationDescription'] != null ? json['promotionValidationDescription'].cast<String>() : [],

  );

  Map<String, dynamic> toJson() => {
    "promotionName": promotionName ?? null,
    "promotionStatus": promotionStatus ?? null,
  };
}
class HourlyPackagePromotionOfferList {
/*
{
  "promotionOfferType": 4,
  "promotionDescription": "1 FreeVisit"
}
*/

  int? promotionOfferType;
  String? promotionDescription;

  HourlyPackagePromotionOfferList({
    this.promotionOfferType,
    this.promotionDescription,
  });
  HourlyPackagePromotionOfferList.fromJson(Map<String, dynamic> json) {
    promotionOfferType = json['promotionOfferType']?.toInt();
    promotionDescription = json['promotionDescription']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['promotionOfferType'] = promotionOfferType;
    data['promotionDescription'] = promotionDescription;
    return data;
  }
}