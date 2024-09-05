// ignore_for_file: unnecessary_null_in_if_null_operators, prefer_null_aware_operators, constant_identifier_names

import 'package:nowproject/cubit/generic_cubit/generic_cubit.dart';

import '../steps/steps.dart';

class IndividualPricing {
  IndividualPricing({
    this.packageProperties,
    this.packages,
    this.promotionDescription,
    this.jsonResponse,
  });

  String? packageProperties;
  String? promotionDescription;
  List<Package>? packages;
  Map<String, String>? jsonResponse;

  factory IndividualPricing.fromJson(Map<String, dynamic> json) =>
      IndividualPricing(
        promotionDescription: json["promotionDescription"],
        packageProperties: json["packageProperties"] == null
            ? null
            : json["packageProperties"].toString().replaceAll("'", '"'),
        packages: json["packages"] == null
            ? null
            : List<Package>.from(
                json["packages"].map((x) => Package.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "packageProperties": packageProperties ?? null,
        "promotionDescription": promotionDescription ?? null,
        "packages": packages == null
            ? null
            : List<dynamic>.from(packages!.map((x) => x.toJson())),
      };
}

class Package {
  Package(
      {this.id,
      this.name,
      this.packageDisplayName,
      this.resourceGroupId,
      this.resourceGroupName,
      this.professionGroupId,
      this.professionGroupName,
      this.priceType,
      this.contractMonths,
      this.periodAmount,
      this.periodAsMonth,
      this.prePaid,
      this.nonSaudiInsurance,
      this.sanadAmount,
      this.periodinDaiys,
      this.orderPackage,
      this.vatRate,
      this.professionForGender,
      this.stateCode,
      this.contractAmount,
      this.finalPrice,
      this.displayFor,
      this.packagePrice,
      this.discount,
      this.packagePriceAfterDiscount,
      this.vatAmount,
      this.finalPackagePrice,
      this.amountInsurance,
      this.advancedAmount,
      this.advancedAmountAfterVat,
      this.monthlyPaidAmount,
      this.activationAmount,
      this.activatioAmountAfterVat,
      this.finalPriceBeforeVat,
      this.vatAmountOfFinalPrice,
      this.finalPriceWithVat,
      this.finalPriceToPay,
      this.individualDiscount,
      required this.state,
      this.packagePriceWithVat});

  String? id;
  String? name;
  String? packageDisplayName;
  String? resourceGroupId;
  String? resourceGroupName;
  String? professionGroupId;
  String? professionGroupName;
  int? priceType;
  double? packagePriceWithVat;
  dynamic contractMonths;
  dynamic periodAmount;
  dynamic periodAsMonth;
  dynamic prePaid;
  dynamic nonSaudiInsurance;
  dynamic sanadAmount;
  String? periodinDaiys;
  dynamic orderPackage;
  dynamic vatRate;
  dynamic professionForGender;
  int? stateCode;
  dynamic contractAmount;
  dynamic finalPrice;
  int? displayFor;
  dynamic packagePrice;
  dynamic discount;
  dynamic packagePriceAfterDiscount;
  dynamic vatAmount;
  dynamic finalPackagePrice;
  dynamic amountInsurance;
  dynamic advancedAmount;
  dynamic advancedAmountAfterVat;
  dynamic monthlyPaidAmount;
  dynamic activationAmount;
  dynamic activatioAmountAfterVat;
  dynamic finalPriceBeforeVat;
  dynamic vatAmountOfFinalPrice;
  dynamic finalPriceWithVat;
  dynamic finalPriceToPay;
  GenericCubit<bool> state;
  IndividualDiscount? individualDiscount;

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        state: GenericCubit<bool>(data: false),
        id: json["id"] ?? null,
        name: json["name"] ?? null,
        packageDisplayName: json["packageDisplayName"] ?? '',
        resourceGroupId: json["resourceGroupId"] ?? null,
        resourceGroupName: json["resourceGroupName"] ?? null,
        professionGroupId: json["professionGroupId"] ?? null,
        professionGroupName: json["professionGroupName"] ?? null,
        priceType: json["priceType"] ?? null,
        contractMonths: json["contractMonths"] ?? null,
        periodAmount: json["periodAmount"] == null
            ? null
            : json["periodAmount"].toDouble(),
        periodAsMonth: json["periodAsMonth"] ?? null,
        prePaid: json["prePaid"] ?? null,
        nonSaudiInsurance: json["nonSaudiInsurance"] == null
            ? null
            : json["nonSaudiInsurance"].toDouble(),
        packagePriceWithVat: json["packagePriceWithVat"] ?? 0.0,
        sanadAmount: json["sanadAmount"] ?? null,
        periodinDaiys: json["periodinDaiys"] ?? null,
        orderPackage: json["orderPackage"],
        vatRate: json["vatRate"] == null ? null : json["vatRate"].toDouble(),
        professionForGender: json["professionForGender"],
        stateCode: json["stateCode"] ?? null,
        contractAmount: json["contractAmount"] == null
            ? null
            : json["contractAmount"].toDouble(),
        finalPrice: json["finalPrice"],
        displayFor: json["displayFor"] ?? null,
        packagePrice: json["packagePrice"] == null
            ? null
            : json["packagePrice"].toDouble(),
        discount: json["discount"] ?? null,
        packagePriceAfterDiscount: json["packagePriceAfterDiscount"] == null
            ? null
            : json["packagePriceAfterDiscount"].toDouble(),
        vatAmount:
            json["vatAmount"] == null ? null : json["vatAmount"].toDouble(),
        finalPackagePrice: json["finalPackagePrice"] == null
            ? null
            : json["finalPackagePrice"].toDouble(),
        amountInsurance: json["amountInsurance"] ?? null,
        advancedAmount: json["advancedAmount"] ?? null,
        advancedAmountAfterVat: json["advancedAmountAfterVat"] == null
            ? null
            : json["advancedAmountAfterVat"].toDouble(),
        monthlyPaidAmount: json["monthlyPaidAmount"] == null
            ? null
            : json["monthlyPaidAmount"].toDouble(),
        activationAmount: json["activationAmount"],
        activatioAmountAfterVat: json["activatioAmountAfterVat"],
        finalPriceBeforeVat: json["finalPriceBeforeVat"] == null
            ? null
            : json["finalPriceBeforeVat"].toDouble(),
        vatAmountOfFinalPrice: json["vatAmountOfFinalPrice"] == null
            ? null
            : json["vatAmountOfFinalPrice"].toDouble(),
        finalPriceWithVat: json["finalPriceWithVat"] == null
            ? null
            : json["finalPriceWithVat"].toDouble(),
        finalPriceToPay: json["finalPriceToPay"] == null
            ? null
            : json["finalPriceToPay"].toDouble(),

        individualDiscount: json['individualDiscount'] != null
            ? IndividualDiscount.fromJson(json['individualDiscount'])
            : null,
        // individualDiscountId = json['individualDiscountId'];
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? null,
        "name": name ?? null,
        "packageDisplayName": packageDisplayName ?? null,
        "resourceGroupId": resourceGroupId ?? null,
        "resourceGroupName": resourceGroupName ?? null,
        "professionGroupId": professionGroupId ?? null,
        "professionGroupName": professionGroupName ?? null,
        "priceType": priceType ?? null,
        "contractMonths": contractMonths ?? null,
        "periodAmount": periodAmount ?? null,
        "periodAsMonth": periodAsMonth ?? null,
        "prePaid": prePaid ?? null,
        "nonSaudiInsurance": nonSaudiInsurance ?? null,
        "sanadAmount": sanadAmount ?? null,
        "periodinDaiys": periodinDaiys ?? null,
        "orderPackage": orderPackage,
        "vatRate": vatRate ?? null,
        "professionForGender": professionForGender,
        "stateCode": stateCode ?? null,
        "contractAmount": contractAmount ?? null,
        "finalPrice": finalPrice,
        "displayFor": displayFor ?? null,
        "packagePrice": packagePrice ?? null,
        "discount": discount ?? null,
        "packagePriceAfterDiscount": packagePriceAfterDiscount ?? null,
        "vatAmount": vatAmount ?? null,
        "finalPackagePrice": finalPackagePrice ?? null,
        "amountInsurance": amountInsurance ?? null,
        "advancedAmount": advancedAmount ?? null,
        "advancedAmountAfterVat": advancedAmountAfterVat ?? null,
        "monthlyPaidAmount": monthlyPaidAmount ?? null,
        "activationAmount": activationAmount,
        "activatioAmountAfterVat": activatioAmountAfterVat,
        "finalPriceBeforeVat": finalPriceBeforeVat ?? null,
        "vatAmountOfFinalPrice": vatAmountOfFinalPrice ?? null,
        "finalPriceWithVat": finalPriceWithVat ?? null,
        "finalPriceToPay": finalPriceToPay ?? null,
        "packagePriceWithVat": packagePriceWithVat,
        "individualDiscount":
            individualDiscount != null ? individualDiscount!.toJson() : null,
        // "individualDiscountId": individualDiscountId,
      };
}

enum TypePricingValue { CURRENCY, STRING, PERCENT, DAY }

class OfferDetailsPackage {
  String? stepId;
  StepDetailsVm? stepDetailsVm;
  Package? package;

  OfferDetailsPackage({this.stepId, this.stepDetailsVm, this.package});

  OfferDetailsPackage.fromJson(Map<String, dynamic> json) {
    stepId = json['stepId'];
    stepDetailsVm = json['stepDetailsVm'] != null
        ? StepDetailsVm.fromJson(json['stepDetailsVm'])
        : null;
    package = json['data'] != null ? Package.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['stepId'] = stepId;
    if (stepDetailsVm != null) {
      data['stepDetailsVm'] = stepDetailsVm!.toJson();
    }
    if (package != null) {
      data['data'] = package!.toJson();
    }
    return data;
  }
}

class IndividualDiscount {
  String? id;
  String? description;
  String? code;
  double? discountPercentage;
  double? discountAmount;
  bool? isLimited;
  dynamic limitationNumber;
  bool? islimitedToContact;
  dynamic contactLimitationNumber;
  dynamic promotionUsage;
  dynamic freeDays;

  IndividualDiscount(
      {this.id,
      this.description,
      this.code,
      this.discountPercentage,
      this.discountAmount,
      this.isLimited,
      this.limitationNumber,
      this.islimitedToContact,
      this.contactLimitationNumber,
      this.promotionUsage,
      this.freeDays});

  IndividualDiscount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    code = json['code'];
    discountPercentage = json['discountPercentage'];
    discountAmount = json['discountAmount'];
    isLimited = json['isLimited'];
    limitationNumber = json['limitationNumber'];
    islimitedToContact = json['islimitedToContact'];
    contactLimitationNumber = json['contactLimitationNumber'];
    promotionUsage = json['promotionUsage'];
    freeDays = json['freeDays'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['description'] = description;
    data['code'] = code;
    data['discountPercentage'] = discountPercentage;
    data['discountAmount'] = discountAmount;
    data['isLimited'] = isLimited;
    data['limitationNumber'] = limitationNumber;
    data['islimitedToContact'] = islimitedToContact;
    data['contactLimitationNumber'] = contactLimitationNumber;
    data['promotionUsage'] = promotionUsage;
    data['freeDays'] = freeDays;
    return data;
  }
}
