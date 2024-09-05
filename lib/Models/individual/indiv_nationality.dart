class IndivNationality {
  IndivNationality({
    this.key,
    this.value,
    this.image,
  });

  String? key;
  String? value;

  String? image;
  bool state = false ;
  factory IndivNationality.fromJson(Map<String, dynamic> json) => IndivNationality(
    key: json["key"],
    value: json["value"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "key": key,
    "value": value,
    "image": image,
  };
}