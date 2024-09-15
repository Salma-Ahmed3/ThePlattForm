class SavedAddressClass {
  SavedAddressClass({
    this.mainLocations,
    this.subLocation,
  });

  Location? mainLocations;
  List<Location>? subLocation;
  bool state = false ;
  String cityId ='';

  factory SavedAddressClass.  fromJson(Map<String, dynamic> json) => SavedAddressClass(
    mainLocations: json["mainLocations"] == null ? null : Location.fromJson(json["mainLocations"]),
    subLocation: json["subLocation"] == null ? [] : List<Location>.from(json["subLocation"].map((x) => Location.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "mainLocations": mainLocations == null ? null : mainLocations!.toJson(),
    "subLocation": List<dynamic>.from(subLocation!.map((x) => x.toJson())),
  };
}
class Location {
  String? id;
  String? displayValue;
  int? houseType;
  String? apartmentNumber;
  String? houseNumber;
  String? cityId;
  String? districtId;
  int? type;
  String? cityName;
  String? districtName;
  int? floorNo;
  bool? availableForHourly;
  bool? availableForIndividual;
  bool state = false;
  String? latitude;
  String? longitude;
  String? availabilityMessage;

  Location({
    this.id,
    this.displayValue,
    this.houseType,
    this.apartmentNumber,
    this.houseNumber,
    this.cityId,
    this.districtId,
    this.type,
    this.cityName,
    this.districtName,
    this.floorNo,
    this.availableForHourly,
    this.availableForIndividual,
    this.latitude,
    this.longitude,
    this.availabilityMessage,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    id: json["id"],
    displayValue: json["displayValue"] ?? "Not Found",
    houseType: json["houseType"],
    apartmentNumber: json["apartmentNumber"],
    houseNumber: json["houseNumber"],
    cityId: json["cityId"],
    districtId: json["districtId"],
    type: json["type"],
    cityName: json["cityName"],
    districtName: json["districtName"],
    floorNo: json["floorNo"],
    availableForHourly: json["availableForHourly"],
    availableForIndividual: json["availableForIndividual"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    availabilityMessage: json["availabilityMessage"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "displayValue": displayValue,
    "houseType": houseType,
    "apartmentNumber": apartmentNumber,
    "houseNumber": houseNumber,
    "cityId": cityId,
    "districtId": districtId,
    "type": type,
    "cityName": cityName,
    "districtName": districtName,
    "floorNo": floorNo,
    "availableForHourly": availableForHourly,
    "availableForIndividual": availableForIndividual,
    "latitude": latitude,
    "longitude": longitude,
    "availabilityMessage": availabilityMessage,
  };

  @override
  String toString() {
    return 'Location(id: $id, displayValue: $displayValue, availabilityMessage: $availabilityMessage)';
  }
}
