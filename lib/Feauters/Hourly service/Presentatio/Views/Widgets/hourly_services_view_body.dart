import 'package:flutter/material.dart';
import 'package:nowproject/core/utils/app_text_style.dart';
import 'package:nowproject/core/utils/custom_button.dart';

class HourlyServicesViewBody extends StatelessWidget {
  const HourlyServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('اختر الخدمة المطلوبة', style: TextStyles.regular18,),
          SizedBox(
            height: 24,
          ),
          CustomButton(titletext: 'عاملة تنظيف', subtitletext : 'تقدم الخدمة بعقود شهرية من شهر الى 24 شهر', colorSmallContainer: Color(0xffD6D6D6)),
          SizedBox(
            height: 20,
          ),
          CustomButton(titletext: 'عاملة تنظيف بالمواد المطلوبة', subtitletext : 'تقدم الخدمة بعقود شهرية من شهر الى 24 شهر', colorSmallContainer: Color(0xffD6D6D6))

        ],
      ),
    );
  }
}