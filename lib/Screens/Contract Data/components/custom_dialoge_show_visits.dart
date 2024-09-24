import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Data/components/rectangle_show_visits.dart';
import 'package:nowproject/components/custom_circle_exit/custom_circle_avatar_dialog.dart';
import 'package:nowproject/utility/app_text_style.dart';

import '../../../components/custom_button/custom_button_in_add_new_addrease.dart';

class DialogeShowVisits extends StatelessWidget {
  final DateTime selectedDate;

  const DialogeShowVisits({super.key, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    final selectedDateFormatted = '${selectedDate.day}, ${selectedDate.toLocal().toString().split(' ')[0]}'; // Format the date if needed
    final daysOfWeek = [
      'السبت', 'الأحد', 'الاثنين', 'الثلاثاء', 'الأربعاء', 'الخميس', 'الجمعة'
    ];
    return Stack(
      alignment: Alignment.topCenter, children: [
      Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
              child: Column(mainAxisSize: MainAxisSize.min,
              children: [
            const SizedBox(height: 50),
            Text('الزيارات المتوقعة', style: TextStyles.semiBold18),
            const SizedBox(height: 20),
            RectangleShowVisits(
              text: ' ${daysOfWeek[selectedDate.weekday - 0]}    $selectedDateFormatted  ',
            ),
            const SizedBox(height: 20),
            CustomButtonInAddNewAddrease(
              onTap: () {
                Navigator.pop(context);
              },
              alignment: Alignment.centerRight,
              colorBackGround: Colors.black,
              tixtInButton: Center(
                child: Text(
                  'اغلاق',
                  style: TextStyles.regular18.copyWith(color: Colors.white),
                ),
              ),
              width: 108,
              height: 47,
              colorBorder: const Color(0xff000000),
              borderRadius: BorderRadius.circular(8),
            ),
            const SizedBox(height: 31),
          ]))),
      const Positioned(
        top: 290,
        child: CustomCircleAvatar(),
      ),
    ]);
  }
}
