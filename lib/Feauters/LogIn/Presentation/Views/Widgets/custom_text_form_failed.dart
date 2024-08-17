import 'package:flutter/material.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

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
        cursorColor: Colors.black,
        style: TextStyles.semiBold18.copyWith(
          color: Colors.black,
        ),
        textInputAction: textInputAction,
        decoration: InputDecoration(
          fillColor: Color(0xffF8F8F8),
          filled: true,
          suffixIcon: suffixIcon,
          hintText: hitText,
          hintStyle: TextStyles.regular16,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 37, 33, 1),
        width: 0.3,
      ),
    );
  }
}
