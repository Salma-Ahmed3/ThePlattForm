class ServiceSettings {
  int? shift;
  dynamic startTime12Format;
  dynamic endTime12Format;
  dynamic starttime;
  dynamic endtime;
  dynamic endTimeBeforeSubtract;
  int? serviceTimeType;
  int? minimumNumberOfVisits;
  int? maximumNumberOfVisits;
  String? userSelectedTime;


  ServiceSettings(
      {this.shift,
        this.starttime,
        this.endtime,
        this.serviceTimeType,
        this.minimumNumberOfVisits,
        this.maximumNumberOfVisits});

  ServiceSettings.fromJson(Map<String, dynamic> json) {
    shift = json['shift'];
    starttime = json['starttime'];
    startTime12Format = json['starttime'];
    endtime = json['endtime'];
    endTime12Format = json['endtime'];
    serviceTimeType = json['serviceTimeType'];
    minimumNumberOfVisits = json['minimumNumberOfVisits'];
    maximumNumberOfVisits = json['maximumNumberOfVisits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['shift'] = shift;
    data['starttime'] = starttime;
    data['endtime'] = endtime;
    data['serviceTimeType'] = serviceTimeType;
    data['minimumNumberOfVisits'] = minimumNumberOfVisits;
    data['maximumNumberOfVisits'] = maximumNumberOfVisits;
    return data;
  }
}
