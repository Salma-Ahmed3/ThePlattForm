import 'package:flutter/material.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

AppBar buildAppBar(
  context, {
  required String titleAppBar,
  required Widget rightIcon,
  required Widget leftIcon,
  required void Function() onPressedRightIcon, 
  required void Function() onPressedLeftIcon,  
}) {
  return AppBar(
    backgroundColor: const Color(0xffF8F8F8),
    centerTitle: true,
    title: Text(
      titleAppBar,
      style: TextStyles.semiBold18,
    ),
    leading: Padding(
      padding: const EdgeInsets.only(right: 31),
      child: IconButton(
        icon: rightIcon,
        onPressed: onPressedRightIcon,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(left: 31),
        child: IconButton(
          icon: leftIcon,
          onPressed: onPressedLeftIcon, 
        ),
      ),
    ],
  );
}
