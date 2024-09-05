class DeliveryEmployee {
  DeliveryEmployee({
    this.fromHousing,
    this.byDelivery,
    this.deliveryCost,
    this.housingBuilding,
    this.profNationCityHousing,
    this.deliveryTime,
    this.selectBranch = false,
  });

  bool? fromHousing;
  bool? byDelivery;
  bool selectBranch;
  dynamic deliveryCost;
  dynamic deliveryTime;
  List<HousingBuilding>? housingBuilding;
  dynamic profNationCityHousing;

  factory DeliveryEmployee.fromJson(Map<String, dynamic> json) =>
      DeliveryEmployee(
        fromHousing: json["fromHousing"],
        byDelivery: json["byDelivery"],
        deliveryCost: json["deliveryCost"],
        deliveryTime: json["deliveryTime"],
        housingBuilding: json["housingBuilding"] == null
            ? []
            : List<HousingBuilding>.from(json["housingBuilding"]
                .map((x) => HousingBuilding.fromJson(x))),
        profNationCityHousing: json["profNationCityHousing"],
      );

  Map<String, dynamic> toJson() => {
        "fromHousing": fromHousing,
        "byDelivery": byDelivery,
        "deliveryCost": deliveryCost,
        "deliveryTime": deliveryTime,
        "housingBuilding": housingBuilding == null
            ? null
            : List<dynamic>.from(housingBuilding!.map((x) => x.toJson())),
        "profNationCityHousing": profNationCityHousing,
      };
}

class HousingBuilding {
  HousingBuilding({
    this.housingBuildingId,
    this.name,
    this.branchName,
    this.cityId,
    this.mapUrl,
    this.address,
    this.gender,
    // this.latitude,
    // this.longitude,
  });

  String? housingBuildingId;
  dynamic name;
  String? branchName;
  String? cityId;
  String? mapUrl;
  dynamic address;
  dynamic gender;
  bool state = false;
  // String latitude;
  // String longitude;

  factory HousingBuilding.fromJson(Map<String, dynamic> json) =>
      HousingBuilding(
        housingBuildingId: json["housingBuildingId"],
        name: json["name"],
        branchName: json["branchName"],
        cityId: json["cityId"],
        mapUrl: json["mapUrl"],
        address: json["address"],
        gender: json["gender"],
        // latitude: json["latitude"],
        // longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "housingBuildingId": housingBuildingId,
        "name": name,
        "branchName": branchName,
        "cityId": cityId,
        "mapUrl": mapUrl,
        "address": address,
        "gender": gender,
        // "latitude": latitude,
        // "longitude": longitude,
      };
}
