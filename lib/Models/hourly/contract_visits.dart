import 'dart:math';

class Datum {
  Datum({
    this.id,
    this.date,
    this.dateStr,
    this.visitShift,
    this.visitType,
    this.postPondReasone,
    /// THIS PROP FOR CHECK IF VISIT IS POSTPONED
    this.isVisitPostponed = false,
    this.newDateSelectPostponed ,
  });

  String? id;
  String? date;
  String? dateStr;
  int? visitShift;
  int? visitType;
  bool isVisitPostponed;
  String? newDateSelectPostponed;
  dynamic postPondReasone;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    /// generate Id for every visit cuz visits doesn't return with id and cuz visits not created to return Id
    id: json["id"] ?? Random().nextInt(1000).toString(),
    date: json["date"],
    dateStr: json["dateStr"],
    visitShift: json["visitShift"],
    visitType: json["visitType"],
    postPondReasone: json["postPondReasone"],
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "dateStr": dateStr,
    "visitShift": visitShift,
    "visitType": visitType,
    "postPondReasone": postPondReasone,
  };
}
