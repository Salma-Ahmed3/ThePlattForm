import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

void buildErrorBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: Colors.red,
      content: Text(
        message,
        style: TextStyles.regular16,
      ),
    ),
  );
}
