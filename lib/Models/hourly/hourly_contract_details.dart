// To parse this JSON data, do
//
//     final HourlyContractDetailsModel = HourlyContractDetailsModelFromJson(jsonString?);

// ignore_for_file: prefer_null_aware_operators

import 'dart:convert';

HourlyContractDetailsModel hourlyContractDetailsModelFromJson(String? str) => HourlyContractDetailsModel.fromJson(json.decode(str!));

// String? HourlyContractDetailsModelToJson(HourlyContractDetailsModel data) => json.encode(data.toJson());

class HourlyContractDetailsModel {
  HourlyContractDetailsModel({
    // this.contractId,
    this.cityName,
    this.districtName,
    this.resourceGroupName,
    this.statusName,
    this.numOfWorkers,
    this.numOfVisits,
    this.contractDuration,
    this.selectedDays,
    this.startDay,
    this.numOfHours,
    this.vatAmount,
    this.vatRate,
    this.statusCode,
    this.daysCount,
    this.latitude,
    this.longitude,
    this.totalPriceWithVat,
    this.canCancel,
    this.canPaid,
    this.contractNum,
    this.serviceName,
  });

  // String? contractId;
  String? contractNum;
  String? cityName;
  String? districtName;
  String? resourceGroupName;
  String? serviceName;
  String? statusName;
  int? numOfWorkers;
  int? numOfVisits;
  int? contractDuration;
  List<String>? selectedDays;
  String? startDay;
  int? numOfHours;
  double? vatAmount;
  double? vatRate;
  int? statusCode;
  int? daysCount;
  String? latitude;
  String? longitude;
  double? totalPriceWithVat;
  bool? canCancel;
  bool? canPaid;

  factory HourlyContractDetailsModel.fromJson(Map<String, dynamic> json) => HourlyContractDetailsModel(
    contractNum: json["contractNum"],
    // contractId: json["contractId"],
    cityName: json["cityName"],
    serviceName: json["serviceName"],
    districtName: json["districtName"],
    resourceGroupName: json["resourceGroupName"],
    statusName: json["statusName"],
    numOfWorkers: json["numOfWorkers"],
    numOfVisits: json["numOfVisits"],
    contractDuration: json["contractDuration"],
    selectedDays: List<String>.from(json["selectedDays"].map((x) => x)),
    startDay: json["startDay"],
    numOfHours: json["numOfHours"],
    vatAmount: json["vatAmount"]==null?null:json["vatAmount"].toDouble(),
    vatRate: json["vatRate"],
    statusCode: json["statusCode"],
    daysCount: json["daysCount"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    totalPriceWithVat: json["totalPriceWithVat"]==null?null:json["totalPriceWithVat"].toDouble(),
    canCancel: json["canCancel"],
    canPaid: json["canPaid"],
  );

  Map<String, dynamic> toJson() => {
    "cityName": cityName,
    "districtName": districtName,
    "resourceGroupName": resourceGroupName,
    "statusName": statusName,
    "numOfWorkers": numOfWorkers,
    "numOfVisits": numOfVisits,
    "contractDuration": contractDuration,
    "selectedDays": List<dynamic>.from(selectedDays!.map((x) => x)),
    "startDay": startDay,
    "numOfHours": numOfHours,
    "vatAmount": vatAmount,
    "vatRate": vatRate,
    "statusCode": statusCode,
    "daysCount": daysCount,
    "latitude": latitude,
    "longitude": longitude,
    "totalPriceWithVat": totalPriceWithVat,
    "canCancel": canCancel,
    "canPaid": canPaid,
  };
}
