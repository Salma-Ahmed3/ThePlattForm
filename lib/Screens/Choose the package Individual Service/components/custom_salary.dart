import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utility/app_text_style.dart';

class CustomSalary extends StatelessWidget {
  const CustomSalary({super.key, required this.packagePrice, required this.packagePriceWithoutDiscount});
final String packagePrice , packagePriceWithoutDiscount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            ' ${packagePrice} ريال', style: TextStyles.regular14),
        
        SizedBox(
          width: 7.w,
        ),
        Text( ' ${packagePriceWithoutDiscount} ريال',
            style: TextStyles.regular14.copyWith(
              decoration: TextDecoration.lineThrough,
            )),
      ],
    );
  }
}
