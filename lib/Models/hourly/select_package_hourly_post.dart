class SelectPackageHourlyPost {
  SelectPackageHourlyPost({
    this.hourlyPricingId,
    this.resourceGroupId,
    this.serviceId,
    this.contractDuration,
    this.hoursCount,
    this.empcount,
    this.weeklyvisits,
    this.visitShift,
    this.promotionCode,
    this.days,
    this.startDate,
    this.extraVisits,
    this.isQuestionerDone,
    this.newShiftEndDate,
    this.timeSlotId,
    this.newShiftStartDate,
    this.contactPerson,
  });

  String? hourlyPricingId;
  String? resourceGroupId;
  String? serviceId;
  String? contractDuration;
  String? hoursCount;
  String? empcount;
  String? contactPerson;
  String? weeklyvisits;
  String? timeSlotId;
  String? promotionCode;

  String? visitShift;
  String? days;
  String? startDate;
  String? extraVisits;
  String? newShiftStartDate;
  String? newShiftEndDate;
  bool? isQuestionerDone;

  Map<String, dynamic> toJson() => {
        "hourlyPricingId": hourlyPricingId,
        "resourceGroupId": resourceGroupId,
        "serviceId": serviceId,
        "contractDuration": contractDuration,
        "hoursCount": hoursCount,
        "timeSlotId": timeSlotId,
        "empcount": empcount,
        "weeklyvisits": weeklyvisits,
        "visitShift": visitShift,
        "promotionCode": promotionCode,
        "days": days,
        "startDate": startDate,
        "extraVisits": extraVisits,
        "isQuestionerDone": isQuestionerDone,
        "newShiftEndDate": newShiftEndDate,
        "newShiftStartDate": newShiftStartDate,
        "ContactPerson": contactPerson
      };
}
