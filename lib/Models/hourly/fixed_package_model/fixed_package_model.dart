// import 'package:equatable/equatable.dart';

// import 'selected_package.dart';

// class FixedPackageModel extends Equatable {
//   final List<SelectedPackage>? selectedPackages;
//   final String? packageProperties;

//   const FixedPackageModel({this.selectedPackages, this.packageProperties});

//   factory FixedPackageModel.fromJson(Map<String, dynamic> json) {
//     return FixedPackageModel(
//       selectedPackages: (json['selectedPackages'] as List<dynamic>?)
//           ?.map((e) => SelectedPackage.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       packageProperties: json['packageProperties'] as String?,
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'selectedPackages': selectedPackages?.map((e) => e.toJson()).toList(),
//         'packageProperties': packageProperties,
//       };

//   @override
//   List<Object?> get props => [selectedPackages, packageProperties];
// }
