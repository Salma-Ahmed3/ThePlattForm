import 'package:equatable/equatable.dart';

import 'selected_package.dart';

class Data extends Equatable {
  final List<SelectedPackage>? selectedPackages;

  const Data({this.selectedPackages});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        selectedPackages: (json['selectedPackages'] as List<dynamic>?)
            ?.map((e) => SelectedPackage.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'selectedPackages': selectedPackages?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [selectedPackages];
}
