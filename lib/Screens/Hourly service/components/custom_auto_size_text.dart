
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_setting.dart';

class CustomTextAutoSize extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final double fontSize;
  final bool bold;
  final bool lineThrough;
  final bool wrapWords;
  final FontWeight? fontWeight;
  final int? maxLines;
  final double? height;
  final TextAlign? textAlign;

  const CustomTextAutoSize(
      {Key? key,
      required this.text,
      required this.color,
      this.bold = false,
      this.lineThrough = false,
      this.fontWeight = FontWeight.normal,
      required this.fontSize,
      this.fontFamily,
      this.textAlign,
      this.height,
      this.wrapWords = true,
      this.maxLines = 99})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text.toString(),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        decoration: lineThrough ? TextDecoration.lineThrough : null,
   
        decorationThickness: 2,
        height: height,
        fontSize: fontSize,
        fontFamily:
            fontFamily ,
        color: color,
        fontWeight: bold ? FontWeight.bold : fontWeight,
      ),
      maxLines: maxLines,
    );
  }
}
