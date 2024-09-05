
import 'package:nowproject/Models/individual/individual_pricing.dart';

class Properties {
  Properties({
    this.key,
    this.enumTypeJson,
  });

  String? key;
  EnumTypeJson? enumTypeJson;
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      if (map != null) reverseMap = map!.map((k, v) => MapEntry(v, k));
    }
    return reverseMap;
  }
}

final typeValues = EnumValues({
  "currency": TypePricingValue.CURRENCY,
  "percent": TypePricingValue.PERCENT,
  "string": TypePricingValue.STRING,
  "day": TypePricingValue.DAY
});

class EnumTypeJson {
  EnumTypeJson({this.type, this.round, this.floor});

  TypePricingValue? type;
  int? round;
  int? floor;

  factory EnumTypeJson.fromJson(Map<String, dynamic> json) {
    return EnumTypeJson(
      type: json["type"] == null ? null : typeValues.map![json["type"]],
      round: json["round"],
      floor: json["floor"],
    );
  }

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : typeValues.reverse![type],
        "round": round,
        "floor": floor,
      };
}
