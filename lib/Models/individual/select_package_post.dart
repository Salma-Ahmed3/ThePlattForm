// ignore_for_file: unnecessary_null_in_if_null_operators

class SelectPackagePost {
  SelectPackagePost({
    this.houseBuildingId,
    this.pricingId,
    this.deliveryCost,
    this.contactId,
    this.selectEmployeeFromSite,
    this.promotionCode,
  });

  String? houseBuildingId;
  String? pricingId;
  String? deliveryCost;
  String? contactId;
  String? promotionCode;
  bool? selectEmployeeFromSite;

  factory SelectPackagePost.fromJson(Map<String, dynamic> json) =>
      SelectPackagePost(
        houseBuildingId: json["houseBuildingId"] ?? null,
        pricingId: json["pricingId"] ?? null,
        contactId: json["contactId"] ?? null,
        deliveryCost: json["deliveryCost"] ?? null,
        selectEmployeeFromSite: json["selectEmployeeFromSite"] ?? null,
        promotionCode: json["promotionCode"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "houseBuildingId": houseBuildingId ?? null,
        "pricingId": pricingId ?? null,
        "contactId": contactId ?? null,
        "deliveryCost": deliveryCost ?? null,
        "selectEmployeeFromSite": selectEmployeeFromSite ?? null,
        "promotionCode": promotionCode ?? null,
      };
}
