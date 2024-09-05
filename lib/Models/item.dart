import 'dart:convert';

List<Item> itemFromJson(String str) =>
    List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  String? key;
  String? value;
  String? image;
  bool state;
  dynamic object;
  String? minDate;
  String? maxDate;
  List<String>? enableDays;
  List<String>? disableDates;

  Item({
    this.key,
    this.value,
    this.object,
    this.image,
    this.state = false,
    this.minDate,
    this.maxDate,
    this.enableDays,
    this.disableDates,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        key: json["key"].toString(),
        value: json["value"].toString(),
        object: json["object"],
        image: json["image"],
        minDate: json['minDate'],
        maxDate: json['maxDate'],
        enableDays:json['enableDays']!=null ? json['enableDays'].cast<String>():[],
        disableDates: json['disableDates'] !=null ? json['disableDates'].cast<String>():[],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
        "image": image,
        "object": object,
        'minDate': minDate,
        'maxDate': maxDate,
        'enableDays': enableDays,
        'disableDates': disableDates,
      };
}
