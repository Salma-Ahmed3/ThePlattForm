class CalenderOptions {
  String? minDate;
  String? maxDate;
  List<String>? enableDays;
  List<String>? disableDates;

  CalenderOptions(
      {this.minDate, this.maxDate, this.enableDays, this.disableDates});

  CalenderOptions.fromJson(Map<String, dynamic> json) {
    minDate = json['minDate'];
    maxDate = json['maxDate'];
    enableDays = json['enableDays'].cast<String>();
    disableDates = json['disableDates'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['minDate'] = minDate;
    data['maxDate'] = maxDate;
    data['enableDays'] = enableDays;
    data['disableDates'] = disableDates;
    return data;
  }
}