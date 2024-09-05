import '../steps/steps.dart';

class DocumentModel {
  String? stepId;
  StepDetailsVm? stepDetailsVm;
  String? documentUrl;

  DocumentModel({this.stepId, this.stepDetailsVm, this.documentUrl});

  DocumentModel.fromJson(Map<String, dynamic> json) {
    stepId = json['stepId'];
    stepDetailsVm = json['stepDetailsVm'] != null
        ? StepDetailsVm.fromJson(json['stepDetailsVm'])
        : null;
    documentUrl = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['stepId'] = stepId;
    if (stepDetailsVm != null) {
      data['stepDetailsVm'] = stepDetailsVm!.toJson();
    }
    data['data'] = documentUrl;
    return data;
  }
}


