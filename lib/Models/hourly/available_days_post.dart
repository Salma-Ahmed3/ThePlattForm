class AvailableDaysPost {
  AvailableDaysPost({
    this.selectedHourlyPricingId,
    this.resourceGroupId,
    this.serviceId,
    this.contractStartDate,
    this.contractDuration,
    this.hoursCount,
    this.empcount,
    this.weeklyvisits,
    this.visitShift,
    this.promotionCode,
    this.days,
    this.timeSlotId,

  });

  String? selectedHourlyPricingId;
  String? resourceGroupId;
  String? serviceId;
  String? contractStartDate;
  String? contractDuration;
  String? hoursCount;
  String? empcount;
  String? weeklyvisits;
  String? promotionCode ;
  String? visitShift;
  String? days;
  String? timeSlotId;

  Map<String, dynamic> toJson() => {
    "selectedHourlyPricingId": selectedHourlyPricingId,
    "resourceGroupId": resourceGroupId,
    "serviceId": serviceId,
    "contractStartDate": contractStartDate,
    "contractDuration": contractDuration,
    "hoursCount": hoursCount,
    "empcount": empcount,
    "weeklyvisits": weeklyvisits,
    "visitShift": visitShift,
    "promotionCode": promotionCode,
    "days": days,
    "timeSlotId": timeSlotId,

  };
}