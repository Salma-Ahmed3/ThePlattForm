import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonPush1 extends StatelessWidget {
  const CustomButtonPush1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
      ),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            'ادفع الان',
            style: TextStyles.regular18.copyWith(color: Colors.white),
          )),
    );
  }
}