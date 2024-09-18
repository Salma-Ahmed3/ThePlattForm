import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_detailes_in_choose_packege_hourly_item.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/dialoge_chosse_package.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_salary.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomDetailesInChoosePackegeHourlyServices extends StatefulWidget {
  const CustomDetailesInChoosePackegeHourlyServices({
    super.key,
    required this.titleText,
    required this.packagePrice,
    required this.packagePriceWithoutDiscount,
    required this.employeeNumberName,
    required this.hoursNumber,
    required this.weeklyVisitName, 
    required this.packagePriceAfterPackageDiscount,
    required this.promotionCodeDescription, 
    required this.totalPriceWithVatBeforePromotion,
  });
  final String titleText , packagePrice , packagePriceWithoutDiscount ,
    employeeNumberName , hoursNumber , weeklyVisitName ,
    packagePriceAfterPackageDiscount , promotionCodeDescription,
    totalPriceWithVatBeforePromotion;
  @override
  State<CustomDetailesInChoosePackegeHourlyServices> createState() =>
      _CustomDetailesInChoosePackegeHourlyServicesState();
}

class _CustomDetailesInChoosePackegeHourlyServicesState
    extends State<CustomDetailesInChoosePackegeHourlyServices> {
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
          // height: 100,
          decoration: BoxDecoration(
            color: const Color(0xffD6D6D6),
            borderRadius: isRectangleVisible
                ? const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  )
                : BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   Text(
                    widget.titleText,
                    style: TextStyles.bold14,
                    maxLines: 5, 
                    overflow: TextOverflow.ellipsis, 
                  ),
                  
                      const SizedBox(
                        height: 7,
                      ),
                        CustomSalary(
                        packagePrice:widget.packagePrice,
                        packagePriceWithoutDiscount:widget. packagePriceWithoutDiscount,),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    onPressed: toggleRectangleVisibility,
                    icon: Icon(
                      isRectangleVisible ? Icons.remove : Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isRectangleVisible)
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const DialogeChossePackage();
                },
              );
            },
            child: Container(
              width: 700.w,
              height: 260.h,
              decoration: BoxDecoration(
                color: const Color(0xffF8F8F8),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child:  CustomDetailesInChoosePackegeHorlyItem(
                packagePrice: widget.packagePrice,
                employeeNumberName: widget.employeeNumberName,
                hoursNumber:widget.hoursNumber,
                weeklyVisitName: widget.weeklyVisitName,
                packagePriceAfterPackageDiscount:widget.packagePriceAfterPackageDiscount,
                promotionCodeDescription: widget.promotionCodeDescription,
                totalPriceWithVatBeforePromotion: widget.totalPriceWithVatBeforePromotion,
                ),
            ),
          ),
          SizedBox(height: 15.h),
      ],
    );
  }
}
