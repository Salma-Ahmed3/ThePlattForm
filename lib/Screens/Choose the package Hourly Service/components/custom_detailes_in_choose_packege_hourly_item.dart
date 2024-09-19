import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utility/app_text_style.dart';

class CustomDetailesInChoosePackegeHorlyItem extends StatelessWidget {
  const CustomDetailesInChoosePackegeHorlyItem({
    super.key,
      required this.packagePrice,
      required this.employeeNumberName,
      required this.hoursNumber,
      required this.weeklyVisitName,
      required this.packagePriceAfterPackageDiscount,
      required this.promotionCodeDescription,
      required this.totalPriceWithVatBeforePromotion,
      
      
      });
final String packagePrice , employeeNumberName ,
  hoursNumber , weeklyVisitName ,totalPriceWithVatBeforePromotion ,
  packagePriceAfterPackageDiscount , promotionCodeDescription;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              Text(
                'سعر الباقه : ',
                style: TextStyles.regular14,
              ),
              
                Text(
               ' ${packagePrice}', style: TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)),
              ),
              Text(
                ' ريال ',
                style: TextStyles.regular14,
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'عدد العاملات : $employeeNumberName ',
            style: TextStyles.regular14,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'عدد الساعات :$hoursNumber ساعة للزيارة',
            style: TextStyles.regular14,
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'عدد الزيارات :$weeklyVisitName ',
            style: TextStyles.regular14,
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              Text(
                'السعر بعد الخصم : ',
                style: TextStyles.regular14,
              ),
              Text(
                packagePriceAfterPackageDiscount,
                style: TextStyles.regular14
                    .copyWith(color: const Color(0XFF24A19D)),
              ),
              Text(
                '  ريال',
                style: TextStyles.regular14,
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'نسبه الخصم : $promotionCodeDescription',
            style: TextStyles.regular14,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'قيمة الضريبه للسعر النهائي :$totalPriceWithVatBeforePromotion ريال',
            style: TextStyles.regular14,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'السعر النهائي : $packagePrice ريال',
            style: TextStyles.regular14,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'السعر شامل الضريبه و الخصم',
            style:
                TextStyles.regular14.copyWith(color: const Color(0XFF24A19D)),
          ),
        ],
      ),
    );
  }
}
