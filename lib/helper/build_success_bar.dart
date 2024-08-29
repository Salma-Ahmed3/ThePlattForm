import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

void buildSuccessBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: Colors.blue,
      content: Text(
        message,
        style: TextStyles.regular16,
      ),
    ),
  ); 
}
