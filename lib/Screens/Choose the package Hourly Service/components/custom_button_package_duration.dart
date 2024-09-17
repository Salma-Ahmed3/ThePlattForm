import 'package:flutter/material.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonPackageDuration extends StatelessWidget {
  const CustomButtonPackageDuration({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomButtonInAddNewAddrease(
        alignment: Alignment.centerRight,
        colorBackGround: isSelected ? Color(0xffD6D6D6) : Colors.white,
        tixtInButton: Center(
          child: Text(
            text,
            style: TextStyles.regular12
                .copyWith(color: isSelected ? Colors.black : Colors.black),
          ),
        ),
        width: 100,
        height: 35,
        colorBorder: isSelected ? Colors.black : const Color(0xffD6D6D6),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
