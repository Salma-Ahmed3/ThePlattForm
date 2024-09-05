class PostponedVisitPost {
  PostponedVisitPost({this.id, this.shift, this.date, this.contractid});

  String? id;
  String? date;
  String? contractid;
  int? shift;

  Map<String, dynamic> toJson() =>
      {"id": id, "date": date, "contractid": contractid, "shift": shift};
}
