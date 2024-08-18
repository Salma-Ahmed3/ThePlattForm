import 'package:flutter/material.dart';
import 'package:nowproject/core/Widgets/custom_dialog.dart';
import 'package:nowproject/core/utils/app_text_style.dart';
import 'package:nowproject/core/utils/custom_button.dart';

class HourlyServicesViewBody extends StatelessWidget {
  const HourlyServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'اختر الخدمة المطلوبة',
            style: TextStyles.regular18,
          ),
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialog();
                },
              );
            },
            child:  CustomButton(
              onTap: (){
                 showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialog();
                },
              );
            
              },
              titletext: 'عاملة تنظيف',
              subtitletext: 'تقدم الخدمة بعقود شهرية من شهر الى 24 شهر',
              colorSmallContainer: const Color(0xffD6D6D6),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
           showDialog(
            
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialog(
                    
                  );
                },
              );
            
            },
            titletext: 'عاملة تنظيف بالمواد المطلوبة',
            subtitletext: 'تقدم الخدمة بعقود شهرية من شهر الى 24 شهر',
            colorSmallContainer: const Color(0xffD6D6D6),
          ),
          
        ],
      ),
    );
  }
}

