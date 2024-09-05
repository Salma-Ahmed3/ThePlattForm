class IndivJobs {
  IndivJobs({
    this.key,
    this.value,
    this.description,
    this.image,
  });

  String? key;
  String? value;
  String? description;

  String? image;
  bool state = false;

  factory IndivJobs.fromJson(Map<String, dynamic> json) => IndivJobs(
        key: json["key"],
        value: json["value"],
    description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
        "description": description,
        "image": image,
      };
}
