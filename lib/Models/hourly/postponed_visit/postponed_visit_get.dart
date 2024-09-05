class PostponedData {
  PostponedData({
    this.postpondByShift,
    this.canPostPondVisit,
    this.preventPostpondReason,
    this.exceededPostpondFactor,
  });

  bool? postpondByShift;
  bool? canPostPondVisit;
  String? preventPostpondReason;
  bool? exceededPostpondFactor;

  factory PostponedData.fromJson(Map<String, dynamic> json) => PostponedData(
    postpondByShift: json["postpondByShift"],
    canPostPondVisit: json["canPostPondVisit"],
    preventPostpondReason: json["preventPostpondReason"],
    exceededPostpondFactor: json["exceededPostpondFactor"],
  );

  Map<String, dynamic> toJson() => {
    "postpondByShift": postpondByShift,
    "canPostPondVisit": canPostPondVisit,
    "preventPostpondReason": preventPostpondReason,
    "exceededPostpondFactor": exceededPostpondFactor,
  };
}
