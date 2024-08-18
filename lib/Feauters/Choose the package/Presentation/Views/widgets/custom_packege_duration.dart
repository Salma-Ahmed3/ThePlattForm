
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomPackageDuration extends StatelessWidget {
  const CustomPackageDuration({super.key});

  @override
  Widget build(BuildContext context) {
    return                 Row(
                  children: [
                    Container(
                    width: 112.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                    color: const Color(0xffD6D6D6),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                    color:  Colors.black,
                    
              ),
        
            ),
            child: Center(child: Text('مدة الباقة 1 شهر' , style: TextStyles.regular12,)),
                ),
                 SizedBox(width: 6.w,),
                Container(
                    width: 70.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                    color: const Color(0xffD6D6D6),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                    color:  Colors.black,
              ),
            ),
            child: Center(child: Text('خصم 5 %' , style: TextStyles.regular12,)),
                ), 
                  ],
                );

  }
}