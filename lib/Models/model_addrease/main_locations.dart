// import 'package:equatable/equatable.dart';

// class MainLocations extends Equatable {
//   final String? id;
//   final String? displayValue;
//   final int? houseType;
//   final String? apartmentNumber;
//   final String? houseNumber;
//   final String? cityId;
//   final int? type;
//   final String? cityName;
//   final String? districtName;
//   final String? districtId;
//   final int? floorNo;
//   final bool? availableForHourly;
//   final bool? availableForIndividual;
//   final String? availabilityMessage;
//   final String? latitude;
//   final String? longitude;
//   final String? addressNotes;

//   const MainLocations({
//     this.id,
//     this.displayValue,
//     this.houseType,
//     this.apartmentNumber,
//     this.houseNumber,
//     this.cityId,
//     this.type,
//     this.cityName,
//     this.districtName,
//     this.districtId,
//     this.floorNo,
//     this.availableForHourly,
//     this.availableForIndividual,
//     this.availabilityMessage,
//     this.latitude,
//     this.longitude,
//     this.addressNotes,
//   });

//   factory MainLocations.fromJson(Map<String, dynamic> json) => MainLocations(
//         id: json['id'] as String?,
//         displayValue: json['displayValue'] as String?,
//         houseType: json['houseType'] as int?,
//         apartmentNumber: json['apartmentNumber'] as String?,
//         houseNumber: json['houseNumber'] as String?,
//         cityId: json['cityId'] as String?,
//         type: json['type'] as int?,
//         cityName: json['cityName'] as String?,
//         districtName: json['districtName'] as String?,
//         districtId: json['districtId'] as String?,
//         floorNo: json['floorNo'] as int?,
//         availableForHourly: json['availableForHourly'] as bool?,
//         availableForIndividual: json['availableForIndividual'] as bool?,
//         availabilityMessage: json['availabilityMessage'] as String?,
//         latitude: json['latitude'] as String?,
//         longitude: json['longitude'] as String?,
//         addressNotes: json['addressNotes'] as String?,
//       );

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'displayValue': displayValue,
//         'houseType': houseType,
//         'apartmentNumber': apartmentNumber,
//         'houseNumber': houseNumber,
//         'cityId': cityId,
//         'type': type,
//         'cityName': cityName,
//         'districtName': districtName,
//         'districtId': districtId,
//         'floorNo': floorNo,
//         'availableForHourly': availableForHourly,
//         'availableForIndividual': availableForIndividual,
//         'availabilityMessage': availabilityMessage,
//         'latitude': latitude,
//         'longitude': longitude,
//         'addressNotes': addressNotes,
//       };

//   @override
//   List<Object?> get props {
//     return [
//       id,
//       displayValue,
//       houseType,
//       apartmentNumber,
//       houseNumber,
//       cityId,
//       type,
//       cityName,
//       districtName,
//       districtId,
//       floorNo,
//       availableForHourly,
//       availableForIndividual,
//       availabilityMessage,
//       latitude,
//       longitude,
//       addressNotes,
//     ];
//   }
// }
