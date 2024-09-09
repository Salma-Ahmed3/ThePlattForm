class Offers {
  Offers({
    this.offerName,
    this.offerId,
    this.offerSector,
    this.pricingId,
    this.image,
    this.sliderItemId,
    this.sliderItemName,
    this.individualDiscountId,
    this.individualDiscountCode,
    this.offerDateFrom,
    this.offersDateTo,
    this.description,});

  Offers.fromJson(dynamic json) {
    offerName = json['offerName'];
    offerId = json['offerId'];
    offerSector = json['offerSector'];
    pricingId = json['pricingId'];
    image = json['image'];
    sliderItemId = json['sliderItemId'];
    sliderItemName = json['sliderItemName'];
    individualDiscountId = json['individualDiscountId'];
    individualDiscountCode = json['individualDiscountCode'];
    offerDateFrom = json['offerDateFrom'];
    offersDateTo = json['offersDateTo'];
    description = json['description'];
  }
  String? offerName;
  String? offerId;
  num? offerSector;
  String? pricingId;
  String? image;
  String? sliderItemId;
  String? sliderItemName;
  dynamic individualDiscountId;
  dynamic individualDiscountCode;
  String? offerDateFrom;
  String? offersDateTo;
  String? description;
  Offers copyWith({  String? offerName,
    String? offerId,
    num? offerSector,
    String? pricingId,
    String? image,
    String? sliderItemId,
    String? sliderItemName,
    dynamic individualDiscountId,
    dynamic individualDiscountCode,
    String? offerDateFrom,
    String? offersDateTo,
    String? sliderDescription,
  }) => Offers(  offerName: offerName ?? this.offerName,
    offerId: offerId ?? this.offerId,
    offerSector: offerSector ?? this.offerSector,
    pricingId: pricingId ?? this.pricingId,
    image: image ?? this.image,
    sliderItemId: sliderItemId ?? this.sliderItemId,
    sliderItemName: sliderItemName ?? this.sliderItemName,
    individualDiscountId: individualDiscountId ?? this.individualDiscountId,
    individualDiscountCode: individualDiscountCode ?? this.individualDiscountCode,
    offerDateFrom: offerDateFrom ?? this.offerDateFrom,
    offersDateTo: offersDateTo ?? this.offersDateTo,
    description: sliderDescription ?? this.description,
  );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['offerName'] = offerName;
    map['offerId'] = offerId;
    map['offerSector'] = offerSector;
    map['pricingId'] = pricingId;
    map['image'] = image;
    map['sliderItemId'] = sliderItemId;
    map['sliderItemName'] = sliderItemName;
    map['individualDiscountId'] = individualDiscountId;
    map['individualDiscountCode'] = individualDiscountCode;
    map['offerDateFrom'] = offerDateFrom;
    map['offersDateTo'] = offersDateTo;
    map['sliderDescription'] = description;
    return map;
  }

}