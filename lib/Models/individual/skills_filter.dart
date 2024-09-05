// ignore_for_file: unnecessary_null_in_if_null_operators

import 'dart:convert';

List<SkillsFilter> skillsFilterFromJson(String str) => List<SkillsFilter>.from(json.decode(str).map((x) => SkillsFilter.fromJson(x)));

String skillsFilterToJson(List<SkillsFilter> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SkillsFilter {
  SkillsFilter({
    this.key,
    this.value,
  });

  String? key;
  String? value;
  bool state = false ;

  factory SkillsFilter.fromJson(Map<String, dynamic> json) => SkillsFilter(
    key: json["key"] ?? null,
    value: json["value"] ?? null,
  );

  Map<String, dynamic> toJson() => {
    "key": key ?? null,
    "value": value ?? null,
  };
}