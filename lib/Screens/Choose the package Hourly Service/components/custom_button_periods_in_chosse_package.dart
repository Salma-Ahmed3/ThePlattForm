import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_text_style.dart';
class CustomButtonPeriodsInChoosePackage extends StatelessWidget {
  const CustomButtonPeriodsInChoosePackage({
    Key? key,
    required this.time,
    required this.isSelected,
    required this.onSelect,
  }) : super(key: key);

  final String time;
  final bool isSelected;
  final VoidCallback onSelect; // Non-nullable type

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect, // Since it's guaranteed to not be null, you can invoke it directly
      child: Row(
        children: [
          CustomButtonInAddNewAddrease(
            alignment: Alignment.center,
            colorBackGround: isSelected ? const Color(0xffD6D6D6) : Colors.white,
            tixtInButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  const SizedBox(width: 5),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      time,
                      style: TextStyles.regular12.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
