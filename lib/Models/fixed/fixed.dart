// class FixedPackageModel {
//   final List<SelectedPackage>? selectedPackages;

//   FixedPackageModel({this.selectedPackages});

//   factory FixedPackageModel.fromJson(Map<String, dynamic> json) {
//     return FixedPackageModel(
//       selectedPackages: (json['selectedPackages'] as List<dynamic>?)
//           ?.map((e) => SelectedPackage.fromJson(e as Map<String, dynamic>))
//           .toList(),
//     );
//   }
// }

// class SelectedPackage {
//   final String selectedHourlyPricingId;
//   final String displayName;
//   final String serviceId;
//   final String resourceGroupId;
//   final String resourceGroupName;
//   final int employeeNumber;
//   final String employeeNumberName;
//   final int hoursNumber;
//   final int weeklyVisits;
//   final String weeklyVisitName;
//   final int contractDuration;
//   final String contractDurationName;
//   final int visitShift;

//   SelectedPackage({
//     required this.selectedHourlyPricingId,
//     required this.displayName,
//     required this.serviceId,
//     required this.resourceGroupId,
//     required this.resourceGroupName,
//     required this.employeeNumber,
//     required this.employeeNumberName,
//     required this.hoursNumber,
//     required this.weeklyVisits,
//     required this.weeklyVisitName,
//     required this.contractDuration,
//     required this.contractDurationName,
//     required this.visitShift,
//   });

//   factory SelectedPackage.fromJson(Map<String, dynamic> json) {
//     return SelectedPackage(
//       selectedHourlyPricingId: json['selectedHourlyPricingId'] as String,
//       displayName: json['displayName'] as String,
//       serviceId: json['serviceId'] as String,
//       resourceGroupId: json['resourceGroupId'] as String,
//       resourceGroupName: json['resourceGroupName'] as String,
//       employeeNumber: json['employeeNumber'] as int,
//       employeeNumberName: json['employeeNumberName'] as String,
//       hoursNumber: json['hoursNumber'] as int,
//       weeklyVisits: json['weeklyVisits'] as int,
//       weeklyVisitName: json['weeklyVisitName'] as String,
//       contractDuration: json['contractDuration'] as int,
//       contractDurationName: json['contractDurationName'] as String,
//       visitShift: json['visitShift'] as int,
//     );
//   }
// }
