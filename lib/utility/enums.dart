// ignore_for_file: constant_identifier_names

enum PricingType {
  Weekly, // send to api 11111
  Monthly,
}

class NotificationStatus {
  static const String New = '1';
  static const String Received = '2';
  static const String Opened = '3';
  static const String Offline = '4';
  static const String delete = '5';
}

getPricingType(PricingType pricingType) {
  if (pricingType == PricingType.Weekly) return 'Weekly';
}

enum PackageType {
  FixedPackage,
  CreatePackage,
}

class ServiceType {
  static const String individualServiceType = '1';
  static const String hourlyServiceType = '2';
  static const String offerServiceType = '4';
  static const String renewServiceType = '3';
  static const String none = '0';
}
