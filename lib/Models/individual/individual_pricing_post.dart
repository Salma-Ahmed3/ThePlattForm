class IndividualPricingPost {
  IndividualPricingPost({
    this.professionGroupId,
    this.resourceGroupId,
    this.cityId,
    this.contactId,
    this.pricingType,
  });

  String? professionGroupId;
  String? resourceGroupId;
  String? cityId;
  String? contactId;
  String? pricingType;

  factory IndividualPricingPost.fromJson(Map<String, dynamic> json) =>
      IndividualPricingPost(
        professionGroupId: json["professionGroupId"],
        resourceGroupId: json["resourceGroupId"],
        cityId: json["cityId"],
        contactId: json["contactId"],
        pricingType: json["pricingType"],
      );

  Map<String, dynamic> toJson() => {
    "professionGroupId": professionGroupId,
    "resourceGroupId": resourceGroupId,
    "cityId": cityId,
    "contactId": contactId,
    "pricingType": pricingType,
  };
}