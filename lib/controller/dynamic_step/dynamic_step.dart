import 'dart:convert';

import 'package:nowproject/Models/steps/steps.dart';
import 'package:nowproject/services/app_services.dart';

class DynamicStepsController {
  static Future<StepDetailsVm?> firstStepAction(
      {String? serviceType, String? object}) async {
    var url = object == null
        ? 'api/Steps/FirstStep?serviceType=$serviceType'
        : 'api/Steps/FirstStep?serviceType=$serviceType&Object=$object';
    var result = await AppService.callService(
        actionType: ActionType.get, apiName: url, body: null);

    return result != null ? StepDetailsVm.fromJson(jsonDecode(result)) : null;
  }
    static Future<AnonymousModel?> contactHadStepsAnonymousIndiv(
      {String? crmUserId, String? stepId}) async {
    var result = await AppService.callService(
        actionType: ActionType.get,
        apiName:
            'api/IndividualContractRequest/ContactHadStepsAnonymous?stepId=$stepId&crmUserId=$crmUserId',
        body: null);

    return result != null
        ? AnonymousModel.fromJson(jsonDecode(result))
        : null;
  }
    static Future<AnonymousModel?> contactHadStepsAnonymous(
      {String? crmUserId, String? stepId}) async {
    var result = await AppService.callService(
        actionType: ActionType.get,
        apiName:
            'api/HourlyContract/ContactHadStepsAnonymous?stepId=$stepId&crmUserId=$crmUserId',
        body: null);

    return result != null ? AnonymousModel.fromJson(jsonDecode(result)) : null;
  }
}
class AnonymousModel {
  String? stepId;
  int? stepType;
  StepDetailsVm? stepDetailsVm;

  AnonymousModel({
    this.stepId,
    this.stepType,
    this.stepDetailsVm,
  });

  AnonymousModel.fromJson(Map<String, dynamic> json) {
    stepId = json['stepId'];
    stepType = json['stepType'];
    stepDetailsVm = json['stepDetailsVm'] != null
        ? StepDetailsVm.fromJson(json['stepDetailsVm'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['stepId'] = stepId;
    data['stepType'] = stepType;
    if (stepDetailsVm != null) {
      data['stepDetailsVm'] = stepDetailsVm!.toJson();
    }

    return data;
  }
}
