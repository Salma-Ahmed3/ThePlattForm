
import 'package:nowproject/Models/address/saved_address.dart';
import 'package:nowproject/services/app_services.dart';

class SavedContactLocationController {
  static Future<SavedAddressClass> getAllUserAddress(
      {String? crmUserId,
      String? serviceId,
      String? selectedHourlyPricingId}) async {
    var address = await AppService.callService(
        actionType: ActionType.get,
        apiName: 'SavedContactLocation/ContactSavedAddress?contactId=$crmUserId&serviceId=$serviceId&selectedHourlyPricingId=$selectedHourlyPricingId',
        body: {});
    return address != null
        ? SavedAddressClass.fromJson(address)
        : SavedAddressClass(mainLocations: null, subLocation: [] );
  }
}