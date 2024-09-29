import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomTextFormFaild extends StatelessWidget {
  const CustomTextFormFaild(
      {super.key,
      required this.hitText,
      required this.textInputAction,
      this.suffixIcon,
      required this.keyboardType,
      this.onSaved,
      this.obscureText = false});

  final String hitText;
  final TextInputAction textInputAction;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final void Function(String?)? onSaved;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: obscureText,
        onSaved: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'هذا الحقل مطلوب';
          }
          return null;
        },
        keyboardType: keyboardType,
        cursorColor: Colors.white,
        style: TextStyles.semiBold18.copyWith(
          color: Colors.white,
        ),
        textInputAction: textInputAction,
        decoration: InputDecoration(
          // fillColor: Colors.white,
          // filled: true,
          suffixIcon: suffixIcon,
          hintText: hitText,
          hintStyle: TextStyles.regular16.copyWith(
            color: Colors.white,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Colors.white,
      width: 1.w,
      ),
    );
  }
}
