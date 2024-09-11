class SliderItem {
  SliderItem({
    this.sliderItemId,
    this.name,
    this.description,
    this.image,
    this.url,
    this.sliderType,
    this.sliderTypeName,
    this.externalUrl,
  });

  SliderItem.fromJson(dynamic json) {
    sliderItemId = json['sliderItemId'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    url = json['url'];
    sliderType = json['sliderType'];
    sliderTypeName = json['sliderTypeName'];
    externalUrl = json['externalUrl'];
  }
  String? sliderItemId;
  String? name;
  String? description;
  String? image;
  String? url;
  num? sliderType;
  String? sliderTypeName;
  dynamic externalUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sliderItemId'] = sliderItemId;
    map['name'] = name;
    map['description'] = description;
    map['image'] = image;
    map['url'] = url;
    map['sliderType'] = sliderType;
    map['sliderTypeName'] = sliderTypeName;
    map['externalUrl'] = externalUrl;

    return map;
  }
}
