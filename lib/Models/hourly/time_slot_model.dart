class TimeSlotModel {
  String? timeSlotId;
  String? displayName;
  String? value;
  String? key;
  int? type;
  int? shift;
  String? startingTime;
  String? endTime;
  int? hours;
  bool? state = false;

  TimeSlotModel(
      {this.timeSlotId,
      this.displayName,
      this.type,
      this.shift,
      this.key,
      this.value,
      this.startingTime,
      this.state = false,
      this.endTime,
      this.hours});

  TimeSlotModel.fromJson(Map<String, dynamic> json) {
    timeSlotId = json['timeSlotId'] ?? json['key'];
    displayName = json['displayName'] ?? json['value'];
    value = json['value'];
    key = json['key'];
    type = json['type'];
    shift = json['shift'];
    startingTime = json['startingTime'];
    endTime = json['endTime'];
    state = json['state'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timeSlotId'] = timeSlotId ?? key;
    data['displayName'] = displayName ?? value;
    data['type'] = type;
    data['value'] = value;
    data['key'] = key;
    data['shift'] = shift;
    data['startingTime'] = startingTime;
    data['endTime'] = endTime;
    data['hours'] = hours;
    data['state'] = state ?? false;
    return data;
  }
}
