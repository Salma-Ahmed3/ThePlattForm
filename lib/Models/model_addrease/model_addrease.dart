import 'package:equatable/equatable.dart';

import 'main_locations.dart';
import 'sub_location.dart';

class ModelAddrease extends Equatable {
  final MainLocations? mainLocations;
  final List<SubLocation>? subLocation;

  const ModelAddrease({this.mainLocations, this.subLocation});

  factory ModelAddrease.fromJson(Map<String, dynamic> json) => ModelAddrease(
        mainLocations: json['mainLocations'] == null
            ? null
            : MainLocations.fromJson(
                json['mainLocations'] as Map<String, dynamic>),
        subLocation: (json['subLocation'] as List<dynamic>?)
            ?.map((e) => SubLocation.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'mainLocations': mainLocations?.toJson(),
        'subLocation': subLocation?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [mainLocations, subLocation];
}
