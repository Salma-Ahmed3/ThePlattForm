
class IndivUploadImagePost {
  IndivUploadImagePost({
    this.id,
    this.imageBase,
    this.name,
    this.fieldName,
  });

  String? id;
  String? imageBase;
  String? name;
  String? fieldName;

  factory IndivUploadImagePost.fromJson(Map<String, dynamic> json) => IndivUploadImagePost(
    id: json["id"],
    imageBase: json["imageBase"],
    name: json["name"],
    fieldName: json["fieldName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "imageBase": imageBase,
    "name": name,
    "fieldName": fieldName,
  };
}