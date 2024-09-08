
class SaveAddressPost {
  SaveAddressPost({
    this.contactId,
    this.addressNotes,
    this.houseNo,
    this.houseType,
    this.floorNo,
    this.apartmentNo,
    this.cityId,
    this.districtId,
    this.latitude,
    this.longitude,
    this.type,
    // this.polygonData
  });

  String? contactId;
  String? addressNotes;
  String? houseNo;
  String? houseType;
  String? floorNo;
  String?  apartmentNo;
  String? cityId;
  String? districtId;
  String? latitude;
  String? longitude;
  int? type;
  // Set<Polygon>? polygonData = {};


  factory SaveAddressPost.fromJson(Map<String, dynamic> json) => SaveAddressPost(
    contactId: json["contactId"],
    addressNotes: json["addressNotes"],
    houseNo: json["houseNo"],
    houseType: json["houseType"],
    floorNo: json["floorNo"],
    apartmentNo: json["apartmentNo"],
    cityId: json["cityId"],
    districtId: json["districtId"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "contactId": contactId,
    "addressNotes": addressNotes,
    "houseNo": houseNo,
    "houseType": houseType,
    "floorNo": floorNo,
    "apartmentNo": apartmentNo,
    "cityId": cityId,
    "districtId": districtId,
    "latitude": latitude,
    "longitude": longitude,
    "type": type,
  };
}