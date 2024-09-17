import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonPeriodsInChoosePackage extends StatefulWidget {
  const CustomButtonPeriodsInChoosePackage({
    super.key,
    required this.time,
  });

  final String time;

  @override
  _CustomButtonPeriodsInChoosePackageState createState() =>
      _CustomButtonPeriodsInChoosePackageState();
}

class _CustomButtonPeriodsInChoosePackageState
    extends State<CustomButtonPeriodsInChoosePackage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Row(
        children: [
          CustomButtonInAddNewAddrease(
            alignment: Alignment.center,
            colorBackGround:
                isSelected ? const Color(0xffD6D6D6) : Colors.white,
            tixtInButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  const SizedBox(width: 5),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.time,
                      style: TextStyles.regular12.copyWith(
                        color: isSelected ? Colors.black : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // width: 80,
            height: 35.h,
            colorBorder: isSelected ? Colors.black : const Color(0xffD6D6D6),
            borderRadius: BorderRadius.circular(10),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
