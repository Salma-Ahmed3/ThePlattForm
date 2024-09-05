

// import '../steps/steps.dart';

// class AttachmentItems {
//   String? stepId;
//   StepDetailsVm? stepDetailsVm;
//   GetAttachmentItems? data;

//   AttachmentItems({this.stepId, this.stepDetailsVm, this.data});

//   AttachmentItems.fromJson(Map<String, dynamic> json) {
//     stepId = json['stepId'];
//     stepDetailsVm = json['stepDetailsVm'] != null
//         ? StepDetailsVm.fromJson(json['stepDetailsVm'])
//         : null;
//     data = json['data'] != null ? GetAttachmentItems.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['stepId'] = stepId;
//     data['stepDetailsVm'] = stepDetailsVm;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }

// class GetAttachmentItems {
//   GetAttachmentItems({
//     this.contractId,
//     this.attchmentsList,
//   });

//   String? contractId;
//   List<AttachmentsList>? attchmentsList;

//   factory GetAttachmentItems.fromJson(Map<String, dynamic> json) => GetAttachmentItems(
//     contractId: json["contractId"],
//     attchmentsList: json["attchmentsList"] == null ? [] : List<AttachmentsList>.from(json["attchmentsList"].map((x) => AttachmentsList.fromJson(x))),
//   );

//   Map<String, dynamic> toJson() => {
//     "contractId": contractId,
//     "attchmentsList": attchmentsList == null ? null : List<dynamic>.from(attchmentsList!.map((x) => x.toJson())),
//   };
// }
// class AttachmentsList {
//   AttachmentsList({
//     this.fieldName,
//     this.displayName,

//   });

//   String? fieldName;
//   String? displayName;
//   IndivUploadImageCubit indivUploadImageCubit =  IndivUploadImageCubit();

//   factory AttachmentsList.fromJson(Map<String, dynamic> json) => AttachmentsList(
//     fieldName: json["fieldName"],
//     displayName: json["displayName"],
//   );

//   Map<String, dynamic> toJson() => {
//     "fieldName": fieldName,
//     "displayName": displayName,
//   };
// }