
class Nationality {
/*
{
  "image": "https://tadbeer.excp.sa:8003/ResourceGroupsImages/{B8D8E920-EA6B-ED11-B4A5-000D3ABFACB0}flag-of-kenya.jpg",
  "hasPackage": false,
  "description": null,
  "key": "b8d8e920-ea6b-ed11-b4a5-000d3abfacb0",
  "value": "كينيا"
}
*/

  String? image;
  bool? hasPackage;
  String? description;
  String? key;
  String? value;

  Nationality({
    this.image,
    this.hasPackage,
    this.description,
    this.key,
    this.value,
  });
  Nationality.fromJson(Map<String, dynamic> json) {
    image = json['image']?.toString();
    hasPackage = json['hasPackage'];
    description = json['description']?.toString();
    key = json['key']?.toString();
    value = json['value']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image'] = image;
    data['hasPackage'] = hasPackage;
    data['description'] = description;
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}
