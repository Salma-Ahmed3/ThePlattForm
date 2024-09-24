import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_packege_duration.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_salary.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomDetailesInChoosePackege extends StatefulWidget {
  const CustomDetailesInChoosePackege(
      {super.key,
      required this.workerData,
      required this.textPackageDuration, required this.packagePrice, required this.packagePriceWithoutDiscount});
  final String workerData;
  final String textPackageDuration;
  final String packagePrice , packagePriceWithoutDiscount;
  @override
  State<CustomDetailesInChoosePackege> createState() =>
      _CustomDetailesInChoosePackegeState();
}

class _CustomDetailesInChoosePackegeState
    extends State<CustomDetailesInChoosePackege> {
  bool isRectangleVisible = false;

  void toggleRectangleVisibility() {
    setState(() {
      isRectangleVisible = !isRectangleVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 384.w,
          // height: widget.heightContainer,
          decoration: const BoxDecoration(
            color: Color(0xffD6D6D6),
            backgroundBlendMode: BlendMode.colorBurn,
            borderRadius: 
                BorderRadius.all(
                  Radius.circular(14),
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250.w,
                      child: Text(
                        widget.workerData,
                        style: TextStyles.bold14,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    CustomPackageDuration(
                      textPackageDuration: widget.textPackageDuration,
                    ),
                    SizedBox(height: 11.h),
                    CustomSalary(packagePrice: widget.packagePrice, packagePriceWithoutDiscount:widget.packagePriceWithoutDiscount,),
              
                  ],
                ),
              ],
              
            ),
          ),
          
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
