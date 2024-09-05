import 'dart:convert';

List<ServiceItems> serviceFromJson(String str) => List<ServiceItems>.from(json.decode(str).map((x) => ServiceItems.fromJson(x)));
class ServiceItems {
  ServiceItems({
    this.id,
    this.name,
    this.description,
    this.iconUrl,
    this.serviceBackImageUrl,
    this.serviceNote,
  });

  String? id;
  String? name;
  String? description;
  String? iconUrl;
  String? serviceBackImageUrl;
  String? serviceNote;

  factory ServiceItems.fromJson(Map<String, dynamic> json) => ServiceItems(
    id: json["id"] ?? null,
    name: json["name"] ?? null,
    description: json["description"] ?? null,
    iconUrl: json["iconUrl"] ?? null,
    serviceBackImageUrl: json["serviceBackImageUrl"] ?? null,
    serviceNote: json["serviceNote"] ?? null,
  );

  Map<String, dynamic> toJson() => {
    "id": id ?? null,
    "name": name ?? null,
    "description": description ?? null,
    "iconUrl": iconUrl ?? null,
    "serviceBackImageUrl": serviceBackImageUrl ?? null,
    "serviceNote": serviceNote ?? null,
  };
}
