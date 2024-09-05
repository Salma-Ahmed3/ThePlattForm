// ignore_for_file: unnecessary_null_in_if_null_operators

class Success {
  Success({
    this.requestId,
    this.paymentNote,
    this.requestNumber,
    this.packageName,
    this.finalPriceToPay,
    this.finalPriceBeforeVat,
    this.priceBeforeDiscount,
    this.discount,
    this.contractFinalPrice,
    this.paymentStoppedNote,
    this.deliveryCost,
    this.allowToPay,
  });

  String? requestId;
  String? paymentNote;
  String? paymentStoppedNote;
  String? requestNumber;
  String? packageName;
  double? finalPriceToPay;
  dynamic contractFinalPrice;
  dynamic priceBeforeDiscount;
  dynamic finalPriceBeforeVat;
  dynamic discount;
  dynamic deliveryCost;
  bool? allowToPay;

  factory Success.fromJson(Map<String, dynamic> json) => Success(
    requestId: json["requestId"] ?? null,
    paymentNote: json["paymentNote"] ?? null,
    paymentStoppedNote: json["paymentStoppedNote"] ?? null,
    requestNumber: json["requestNumber"] ?? null,
    packageName: json["packageName"] ?? null,
    // ignore: prefer_null_aware_operators
    finalPriceToPay: json["finalPriceToPay"] == null ? null : json["finalPriceToPay"].toDouble(),
    contractFinalPrice: json["contractFinalPrice"] ?? null,
    discount:  json["discount"] ?? null,
    finalPriceBeforeVat:  json["finalPriceBeforeVat"] ?? null,
    priceBeforeDiscount:  json["priceBeforeDiscount"] ?? null,
    deliveryCost: json["deliveryCost"] ?? null,
    allowToPay: json["allowToPay"] == null||json["allowToPay"].toString().isEmpty ? false : json["allowToPay"],

  );

  Map<String, dynamic> toJson() => {
    "requestId": requestId ?? '',
    "paymentNote": paymentNote ?? '',
    "requestNumber": requestNumber ?? '',
    "packageName": packageName ?? '',
    "finalPriceToPay": finalPriceToPay ?? null,
    "contractFinalPrice": contractFinalPrice ?? null,
    "deliveryCost": deliveryCost ?? null,
  };
}