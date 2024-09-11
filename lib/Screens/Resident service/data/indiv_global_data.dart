import 'package:nowproject/Models/offers/offer.dart';

OfferGlobalData offerGlobalData = OfferGlobalData();
IndivGlobalData indivGlobalData = IndivGlobalData();

class IndivGlobalData {
  String? houseBuildingId;
  String? branchName;

  String? professionGroupId;

  String? nationalityIdAnonymous = "";

  IndivGlobalData({
    this.houseBuildingId,
    this.branchName,
    this.professionGroupId,
  });
}

class OfferGlobalData {
  bool isFromOffer = false;
  Offers? currentOffers = Offers();
  String? pricingId;
  // Package? selectedPackage;

  OfferGlobalData({this.currentOffers, this.pricingId});
}
