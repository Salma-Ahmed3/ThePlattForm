class MainLocation {
  MainLocation({
    this.id,
  required  this.displayValue, 
    this.houseType,
    this.apartmentNumber,
    this.houseNumber,
    this.cityId,
    this.districtId,
    this.type,
    this.cityName , 
    this.districtName , 
    this.floorNo,
    this.availableForHourly, 
    this.availableForIndividual, 
    this.latitude,
    this.longitude,
   required this.availabilityMessage , 
  });

  String? id;
  String displayValue;
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
  String availabilityMessage;

  factory MainLocation.fromJson(Map<String, dynamic> json) => MainLocation(
    id: json["id"],
    displayValue: json["displayValue"] = '${json["displayValue"]}' ,
    houseType: json["houseType"],
    apartmentNumber: json["apartmentNumber"],
    houseNumber: json["houseNumber"],
    cityId: json["cityId"],
    districtId: json["districtId"],
    type: json["type"],
    cityName: json["cityName"] ,
    districtName: json["districtName"] ,
    floorNo: json["floorNo"],
    availableForHourly: json["availableForHourly"] ?? false,
    availableForIndividual: json["availableForIndividual"] ?? false,
    latitude: json["latitude"],
    longitude: json["longitude"],
    availabilityMessage: json["availabilityMessage"] = '${json["availabilityMessage"]}'
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
}
