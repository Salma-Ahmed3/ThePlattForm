import 'dart:convert';

List<HourlyContract> hourlyContractFromJson(String str) => List<HourlyContract>.from(json.decode(str).map((x) => HourlyContract.fromJson(x)));

class HourlyContract {
  HourlyContract({
    this.contractId,
    this.contractNum,
    this.startDay,
    this.statusCode,
    this.statusName,
    this.finalPrice,
  });

  String? contractId;
  String? contractNum;
  String? startDay;
  dynamic statusCode;
  String? statusName;
  dynamic finalPrice;

  factory HourlyContract.fromJson(Map<String, dynamic> json) => HourlyContract(
    contractId: json["contractId"],
    contractNum: json["contractNum"],
    startDay: json["startDay"],
    statusCode: json["statusCode"],
    statusName: json["statusName"],
    // ignore: prefer_null_aware_operators
    finalPrice: json["finalPrice"]==null?null:json["finalPrice"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "contractNum": contractNum,
    "startDay": startDay,
    "statusCode": statusCode,
    "statusName": statusName,
    "finalPrice": finalPrice,
  };
}
