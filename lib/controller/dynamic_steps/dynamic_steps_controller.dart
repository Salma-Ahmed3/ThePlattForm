import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/services/app_services.dart';

class DynamicStepsController {
  static Future<StepDetailsVm?> firstStepAction(
      {String? serviceType, String? object}) async {
          var result = await AppService.callService(
          actionType: ActionType.get,
          apiName:  'api/Steps/FirstStep?serviceType=$serviceType&Object=$object',
          body: {}
      );
    return result != null ? StepDetailsVm.fromJson(result) : null;
  }
}
