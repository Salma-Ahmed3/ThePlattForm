// class MainLocation {
//   final String displayValue;
//   final String availabilityMessage;
//   final String id;
//   final int houseType;
//   final String apartmentNumber;
//   final String houseNumber;
//   final String cityId;
//   final String cityName;
//   final String districtName;
//   final String districtId;
//   final int floorNo;
//   final bool availableForHourly;
//   final bool availableForIndividual;
//   final String latitude;
//   final String longitude;
//   final String addressNotes;

//   // Constructor
//   MainLocation({
//     required this.displayValue,
//     required this.availabilityMessage,
//     required this.id,
//     required this.houseType,
//     required this.apartmentNumber,
//     required this.houseNumber,
//     required this.cityId,
//     required this.cityName,
//     required this.districtName,
//     required this.districtId,
//     required this.floorNo,
//     required this.availableForHourly,
//     required this.availableForIndividual,
//     required this.latitude,
//     required this.longitude,
//     required this.addressNotes,
//   });

//   // Empty constructor for default values
//   factory MainLocation.empty() {
//     return MainLocation(
//       displayValue: '',
//       availabilityMessage: '',
//       id: '',
//       houseType: 0,
//       apartmentNumber: '',
//       houseNumber: '',
//       cityId: '',
//       cityName: '',
//       districtName: '',
//       districtId: '',
//       floorNo: 0,
//       availableForHourly: false,
//       availableForIndividual: false,
//       latitude: '',
//       longitude: '',
//       addressNotes: '',
//     );
//   }

//   // JSON constructor
//   factory MainLocation.fromJson(Map<String, dynamic> json) {
//     return MainLocation(
//       displayValue: json['displayValue'] ?? '',
//       availabilityMessage: json['availabilityMessage'] ?? '',
//       id: json['id'] ?? '',
//       houseType: json['houseType'] ?? 0,
//       apartmentNumber: json['apartmentNumber'] ?? '',
//       houseNumber: json['houseNumber'] ?? '',
//       cityId: json['cityId'] ?? '',
//       cityName: json['cityName'] ?? '',
//       districtName: json['districtName'] ?? '',
//       districtId: json['districtId'] ?? '',
//       floorNo: json['floorNo'] ?? 0,
//       availableForHourly: json['availableForHourly'] ?? false,
//       availableForIndividual: json['availableForIndividual'] ?? false,
//       latitude: json['latitude'] ?? '',
//       longitude: json['longitude'] ?? '',
//       addressNotes: json['addressNotes'] ?? '',
//     );
//   }
// }
