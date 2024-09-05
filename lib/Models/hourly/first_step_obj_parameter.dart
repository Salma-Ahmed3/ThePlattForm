class FirstStepObjParameter {
  String? serviceId;
  String? selectedPricingId;
  bool? fromOffer;

  FirstStepObjParameter(
      {this.serviceId, this.selectedPricingId, this.fromOffer});

  FirstStepObjParameter.fromJson(Map<String, dynamic> json) {
    serviceId = json['ServiceId'];
    selectedPricingId = json['SelectedPricingId'];
    fromOffer = json['FromOffer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ServiceId'] = serviceId;
    data['SelectedPricingId'] = selectedPricingId;
    data['FromOffer'] = fromOffer;
    return data;
  }
}

class FirstStepObjParameterIndividual {
  String? pricingId;
  String? individualPromotionId;

  FirstStepObjParameterIndividual({
    this.pricingId,
    this.individualPromotionId,
  });

  FirstStepObjParameterIndividual.fromJson(Map<String, dynamic> json) {
    pricingId = json['PricingId'];
    individualPromotionId = json['IndividualPromotionId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PricingId'] = pricingId;
    data['IndividualPromotionId'] = individualPromotionId;
    return data;
  }
}
