import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomDetailesInMyRequest extends StatelessWidget {
  const CustomDetailesInMyRequest({super.key, required this.showAllData});
  final bool showAllData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          Text('صاحب الطلب : Ahmed Abo Alfadl', style: TextStyles.regular14),
          SizedBox(height: 5.h),
          Text('تاريخ الطلب : 20/05/2021', style: TextStyles.regular14),
          if (showAllData) ...[
            SizedBox(height: 5.h),
            Text('الجنسية : بنجلاديش', style: TextStyles.regular14),
            SizedBox(height: 5.h),
            Text('المهنة المطلوبة : عاملة منزلية', style: TextStyles.regular14),
            SizedBox(height: 13.h),
            Text('تفاصيل الطلب :', style: TextStyles.regular14),
            SizedBox(height: 5.h),
            Text('طلب اختيار افراد من التطبيق', style: TextStyles.regular14),
          ],
        ],
      ),
    );
  }
}
