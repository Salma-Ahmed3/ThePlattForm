
// ignore_for_file: prefer_null_aware_operators

class IndivPackageDetails {
  IndivPackageDetails({
    this.employeeDetails,
    this.packageDetails,
    this.packageDisplayProperties,
  });

  EmployeeDetails? employeeDetails;
  PackageDetails? packageDetails;
  String? packageDisplayProperties;

  factory IndivPackageDetails.fromJson(Map<String, dynamic> json) => IndivPackageDetails(
    employeeDetails: json["employeeDetails"] == null ? null : EmployeeDetails.fromJson(json["employeeDetails"]),
    packageDetails: json["packageDetails"] == null ? null : PackageDetails.fromJson(json["packageDetails"]),
    packageDisplayProperties: json["packageDisplayProperties"] == null
        ? null
        : json["packageDisplayProperties"].toString().replaceAll("'", '"'),  );

  Map<String, dynamic> toJson() => {
    "employeeDetails": employeeDetails == null ? null : employeeDetails!.toJson(),
    "packageDetails": packageDetails == null ? null : packageDetails!.toJson(),
    "packageProperties":
    packageDisplayProperties,
  };
}

class EmployeeDetails {
  EmployeeDetails({
    this.employeeName,
    this.employeeProfesiion,
    this.employeeNationality,
  });

  String? employeeName;
  String? employeeProfesiion;
  String? employeeNationality;

  factory EmployeeDetails.fromJson(Map<String, dynamic> json) => EmployeeDetails(
    employeeName: json["employeeName"] ?? '',
    employeeProfesiion: json["employeeProfesiion"] ?? '',
    employeeNationality: json["employeeNationality"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "employeeName": employeeName,
    "employeeProfesiion": employeeProfesiion,
    "employeeNationality": employeeNationality,
  };
}
class PackageDetails {
  PackageDetails({
    this.id,
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
    this.vatAmountOfActivation,
    this.activatioAmountAfterVat,
    this.finalPriceBeforeVat,
    this.vatAmountOfFinalPrice,
    this.finalPriceToPay,
    this.deliveryCost,
    this.finalPriceWithVat,
  });

  String? id;
  String? name;
  String? packageDisplayName;

  String? resourceGroupId;
  String? resourceGroupName;
  String? professionGroupId;
  String? professionGroupName;
  dynamic priceType;
  dynamic deliveryCost;
  dynamic contractMonths;
  dynamic periodAmount;
  dynamic periodAsMonth;
  dynamic prePaid;
  dynamic nonSaudiInsurance;
  dynamic sanadAmount;
  dynamic periodinDaiys;
  dynamic orderPackage;
  dynamic vatRate;
  dynamic professionForGender;
  dynamic stateCode;
  dynamic contractAmount;
  dynamic finalPrice;
  dynamic displayFor;
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
  dynamic vatAmountOfActivation;
  dynamic activatioAmountAfterVat;
  dynamic finalPriceBeforeVat;
  dynamic vatAmountOfFinalPrice;
  dynamic finalPriceToPay;
  dynamic finalPriceWithVat;

  factory PackageDetails.fromJson(Map<String, dynamic> json) => PackageDetails(
    id: json["id"],
    name: json["name"],
    packageDisplayName: json["packageDisplayName"],

    resourceGroupId: json["resourceGroupId"],
    resourceGroupName: json["resourceGroupName"],
    professionGroupId: json["professionGroupId"],
    professionGroupName: json["professionGroupName"],
    priceType: json["priceType"],
    contractMonths: json["contractMonths"],
    periodAmount: json["periodAmount"] == null ? null : json["periodAmount"].toDouble(),
    periodAsMonth: json["periodAsMonth"],
    prePaid: json["prePaid"],
    nonSaudiInsurance: json["nonSaudiInsurance"] == null ? null : json["nonSaudiInsurance"].toDouble(),
    sanadAmount: json["sanadAmount"],
    periodinDaiys: json["periodinDaiys"],
    orderPackage: json["orderPackage"],
    vatRate: json["vatRate"] == null ? null : json["vatRate"].toDouble(),
    professionForGender: json["professionForGender"],
    stateCode: json["stateCode"],
    contractAmount: json["contractAmount"] == null ? null : json["contractAmount"].toDouble(),
    finalPrice: json["finalPrice"],
    displayFor: json["displayFor"],
    packagePrice: json["packagePrice"] == null ? null : json["packagePrice"].toDouble(),
    discount: json["discount"] ?? 0.0,
    packagePriceAfterDiscount: json["packagePriceAfterDiscount"] == null ? null : json["packagePriceAfterDiscount"].toDouble(),
    vatAmount: json["vatAmount"] == null ? null : json["vatAmount"].toDouble(),
    finalPackagePrice: json["finalPackagePrice"] == null ? null : json["finalPackagePrice"].toDouble(),
    amountInsurance: json["amountInsurance"],
    advancedAmount: json["advancedAmount"],
    advancedAmountAfterVat: json["advancedAmountAfterVat"] == null ? null : json["advancedAmountAfterVat"].toDouble(),
    monthlyPaidAmount: json["monthlyPaidAmount"] == null ? null : json["monthlyPaidAmount"].toDouble(),
    activationAmount: json["activationAmount"],
    vatAmountOfActivation: json["vatAmountOfActivation"],
    activatioAmountAfterVat: json["activatioAmountAfterVat"],
    finalPriceBeforeVat: json["finalPriceBeforeVat"] == null ? null : json["finalPriceBeforeVat"].toDouble(),
    vatAmountOfFinalPrice: json["vatAmountOfFinalPrice"] == null ? null : json["vatAmountOfFinalPrice"].toDouble(),
    finalPriceToPay: json["finalPriceToPay"] == null ? null : json["finalPriceToPay"].toDouble(),
    deliveryCost: json["deliveryCost"],
    finalPriceWithVat: json["finalPriceWithVat"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "packageDisplayName": packageDisplayName,

    "resourceGroupId": resourceGroupId,
    "resourceGroupName": resourceGroupName,
    "professionGroupId": professionGroupId,
    "professionGroupName": professionGroupName,
    "priceType": priceType,
    "contractMonths": contractMonths,
    "periodAmount": periodAmount,
    "periodAsMonth": periodAsMonth,
    "prePaid": prePaid,
    "nonSaudiInsurance": nonSaudiInsurance,
    "sanadAmount": sanadAmount,
    "periodinDaiys": periodinDaiys,
    "orderPackage": orderPackage,
    "vatRate": vatRate,
    "professionForGender": professionForGender,
    "stateCode": stateCode,
    "contractAmount": contractAmount,
    "finalPrice": finalPrice,
    "displayFor": displayFor,
    "packagePrice": packagePrice,
    "discount": discount,
    "packagePriceAfterDiscount": packagePriceAfterDiscount,
    "vatAmount": vatAmount,
    "finalPackagePrice": finalPackagePrice,
    "amountInsurance": amountInsurance,
    "advancedAmount": advancedAmount,
    "advancedAmountAfterVat": advancedAmountAfterVat,
    "monthlyPaidAmount": monthlyPaidAmount,
    "activationAmount": activationAmount,
    "vatAmountOfActivation": vatAmountOfActivation,
    "activatioAmountAfterVat": activatioAmountAfterVat,
    "finalPriceBeforeVat": finalPriceBeforeVat,
    "vatAmountOfFinalPrice": vatAmountOfFinalPrice,
    "finalPriceToPay": finalPriceToPay,
    "deliveryCost": deliveryCost,
    "finalPriceWithVat": finalPriceWithVat,
  };
}