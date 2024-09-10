
import 'package:nowproject/Models/address/saved_address.dart';
import 'package:nowproject/services/app_services.dart';

class SavedContactLocationController {
  static Future<MainLocation> getAllUserAddress(
      {String? crmUserId,
      String? serviceId,
      String? selectedHourlyPricingId}) async {
    var address = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'SavedContactLocation/ContactSavedAddress?contactId=1f87f7f3-6466-4013-9be3-e23ce4e62a55&serviceId=4dc0edee-8e92-ee11-b766-000d3a236f24',
        body: {});
    return address != null
        ? MainLocation.fromJson(address)
        : MainLocation(displayValue: '', availabilityMessage: '');
  }
}