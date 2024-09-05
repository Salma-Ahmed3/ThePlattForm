
class EditableVisibleProperties {
  EditableVisibleProperties({
    this.editableProperties,
    this.visableProperties,
  });

  List<String>? editableProperties ;
  List<String>? visableProperties ;

  factory EditableVisibleProperties.fromJson(Map<String, dynamic> json) => EditableVisibleProperties(
    editableProperties: json["editableProperties"] == null ? [] : List<String>.from(json["editableProperties"].map((x) => x)),
    visableProperties: json["visableProperties"] == null ? [] : List<String>.from(json["visableProperties"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "editableProperties": editableProperties == null ? null : List<dynamic>.from(editableProperties!.map((x) => x)),
    "visableProperties": visableProperties == null ? null : List<dynamic>.from(visableProperties!.map((x) => x)),
  };
}
