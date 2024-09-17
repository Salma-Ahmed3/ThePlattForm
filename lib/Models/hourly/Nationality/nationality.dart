import 'package:equatable/equatable.dart';

class Nationality extends Equatable {
  final String? image;
  final bool? hasPackage;
  final dynamic description;
  final String? key;
  final String? value;

  const Nationality({
    this.image,
    this.hasPackage,
    this.description,
    this.key,
    this.value,
  });

  factory Nationality.fromJson(Map<String, dynamic> json) => Nationality(
        image: json['image'] as String?,
        hasPackage: json['hasPackage'] as bool?,
        description: json['description'] as dynamic,
        key: json['key'] as String?,
        value: json['value'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'image': image,
        'hasPackage': hasPackage,
        'description': description,
        'key': key,
        'value': value,
      };

  @override
  List<Object?> get props => [image, hasPackage, description, key, value];
}
