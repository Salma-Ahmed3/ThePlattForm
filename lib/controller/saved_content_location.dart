
import 'package:nowproject/Models/address/saved_address.dart';
import 'package:nowproject/services/app_services.dart';

class SavedContactLocationController {
  static Future<MainLocation> getAllUserAddress(
      {String? crmUserId,
      String? serviceId,
      String? selectedHourlyPricingId}) async {
    var address = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'SavedContactLocation/ContactSavedAddress?contactId=$crmUserId&serviceId=$serviceId&selectedHourlyPricingId=$selectedHourlyPricingId',
        body: {});
    return address != null
        ? MainLocation.fromJson(address)
        : MainLocation(displayValue: '', availabilityMessage: '' );
  }
}