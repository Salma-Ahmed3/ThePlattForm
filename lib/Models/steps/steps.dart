class ActionStep {
  ActionStep({
    this.stepId,
    this.createdProcedureId,
    this.stepDetailsVm,
  });

  String? stepId;
  String? createdProcedureId;
  StepDetailsVm? stepDetailsVm;

  factory ActionStep.fromJson(Map<String, dynamic> json) => ActionStep(
        stepId: json["stepId"],
        createdProcedureId:
            json["stepId"] == null ? null : json["createdProcedureId"],
        stepDetailsVm: json["stepDetailsVm"] == null
            ? null
            : StepDetailsVm.fromJson(json["stepDetailsVm"]),
      );

  Map<String, dynamic> toJson() => {
        "stepId": stepId,
        "stepDetailsVm": stepDetailsVm == null ? null : stepDetailsVm!.toJson(),
        "createdProcedureId": createdProcedureId,
      };
}

class StepDetailsVm {
  StepDetailsVm({
    this.stepHeaderId,
    this.stepOrder,
    this.stepId,
    this.dbResourceName,
    this.dbResourceFieldName,
    this.isAvailable,
    this.controller,
    this.action,
    this.iconClass,
    this.previousStepAction,
    this.nextStepAction,
    this.stepKeyword,
    this.description,
    this.isVisible,
    this.stepType,
    this.httpMethod,
    this.name,
  });

  String? stepHeaderId;
  String? stepId;
  int? stepOrder;
  int? stepType;
  dynamic dbResourceName;
  dynamic dbResourceFieldName;
  bool? isAvailable;
  String? controller;
  String? action;
  dynamic iconClass;
  String? previousStepAction;
  String? nextStepAction;
  String? stepKeyword;
  String? description;
  String? httpMethod;
  bool? isVisible;
  String? name;

  factory StepDetailsVm.fromJson(Map<String, dynamic> json) => StepDetailsVm(
        stepHeaderId: json["stepHeaderId"],
        stepOrder: json["stepOrder"],
        stepId: json["stepId"],
        dbResourceName: json["dbResourceName"],
        dbResourceFieldName: json["dbResourceFieldName"],
        isAvailable: json["isAvailable"],
        controller: json["controller"],
        action: json["action"],
        iconClass: json["iconClass"],
        previousStepAction: json["previousStepAction"],
        nextStepAction: json["nextStepAction"],
        stepKeyword: json["stepKeyword"],
        description: json["description"],
        isVisible: json["isVisible"],
        stepType: json["stepType"],
        httpMethod: json["httpMethod"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "stepHeaderId": stepHeaderId,
        "stepOrder": stepOrder,
        "stepId": stepId,
        "dbResourceName": dbResourceName,
        "dbResourceFieldName": dbResourceFieldName,
        "isAvailable": isAvailable,
        "controller": controller,
        "action": action,
        "iconClass": iconClass,
        "previousStepAction": previousStepAction,
        "nextStepAction": nextStepAction,
        "stepKeyword": stepKeyword,
        "description": description,
        "isVisible": isVisible,
        "stepType": stepType,
        "httpMethod": httpMethod,
        "name": name,
      };
}
