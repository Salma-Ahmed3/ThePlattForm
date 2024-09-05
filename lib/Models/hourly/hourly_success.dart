
class GetHourlySuccess {

  String? id;
  String? contractNo;
  String? finalPrice;
  String? paymentNote;
  bool? canPay;

  GetHourlySuccess({
    this.id,
    this.contractNo,
    this.finalPrice,
    this.paymentNote,
    this.canPay,
  });
  GetHourlySuccess.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    contractNo = json['contractNo']?.toString();
    finalPrice = json['finalPrice']?.toString();
    paymentNote = json['paymentNote']?.toString();
    canPay = json['canPay'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['contractNo'] = contractNo;
    data['finalPrice'] = finalPrice;
    data['paymentNote'] = paymentNote;
    data['canPay'] = canPay;
    return data;
  }
}
