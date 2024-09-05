
import 'package:nowproject/utility/app_setting.dart';

class VisitNumberSelectMessage {
  String? id;
  String? nameAr;
  String? nameEn;

  VisitNumberSelectMessage({
    this.id,
    this.nameAr,
    this.nameEn,
  });
  String? getVisitNumberSelectMessage(String visitNumber) {
    List<VisitNumberSelectMessage> tempList = [];
    tempList.add(VisitNumberSelectMessage(
        id: "1",
        nameAr: ' يرجي اختيار يوم واحد فقط',
        nameEn: 'Please Select One Day'));
    tempList.add(VisitNumberSelectMessage(
        id: "2",
        nameAr: 'يرجي اختيار يومان فقط',
        nameEn: 'Please Select Two Days'));
    tempList.add(VisitNumberSelectMessage(
        id: "3",
        nameAr: 'يرجي اختيار ثلاثة ايام فقط',
        nameEn: 'Please Select Three Days'));
    tempList.add(VisitNumberSelectMessage(
        id: "4",
        nameAr: 'يرجي اختيار اربعة ايام',
        nameEn: 'Please Select Four Days'));
    tempList.add(VisitNumberSelectMessage(
        id: "5",
        nameAr: 'يرجي اختيار خمسة ايام فقط',
        nameEn: 'Please Select Five Days'));
    tempList.add(VisitNumberSelectMessage(
        id: "6",
        nameAr: 'يرجي اختيار ستة ايام ',
        nameEn: 'Please Select Six Days'));
    return isArabic
        ? tempList.where((e) => e.id == visitNumber).first.nameAr
        : tempList.where((e) => e.id == visitNumber).first.nameEn;
  }
}
