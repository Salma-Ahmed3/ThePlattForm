// ignore_for_file: unnecessary_null_in_if_null_operators

import 'dart:convert';

List<ResourceGroup> resourceGroupFromJson(String str) => List<ResourceGroup>.from(json.decode(str).map((x) => ResourceGroup.fromJson(x)));
String resourceGroupToJson(List<ResourceGroup> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResourceGroup {
  ResourceGroup({
    this.image,
    this.key,
    this.value,
    this.state = false,
  });

  String? image;
  String? key;
  String? value;
  bool state ;

  factory ResourceGroup.fromJson(Map<String, dynamic> json) => ResourceGroup(
    image: json["image"] ?? null,
    key: json["key"] ?? null,
    value: json["value"] ?? null,
  );

  Map<String, dynamic> toJson() => {
    "image": image ?? null,
    "key": key ?? null,
    "value": value ?? null,
  };
}
