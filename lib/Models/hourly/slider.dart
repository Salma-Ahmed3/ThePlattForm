import 'dart:convert';

List<SliderOffer> sliderFromJson(String str) => List<SliderOffer>.from(json.decode(str).map((x) => SliderOffer.fromJson(x)));
String sliderToJson(List<SliderOffer> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SliderOffer {
  String? selectedHourlyPricingId;
  String? packageImage;

  SliderOffer({
    this.selectedHourlyPricingId,
    this.packageImage,
  });
  SliderOffer.fromJson(Map<String, dynamic> json) {
    selectedHourlyPricingId = json['selectedHourlyPricingId']?.toString();
    packageImage = json['packageImage']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['selectedHourlyPricingId'] = selectedHourlyPricingId;
    data['packageImage'] = packageImage;
    return data;
  }
}
