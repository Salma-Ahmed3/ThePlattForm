import 'package:flutter/material.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, 
    required this.subtitletext, 
    required this.titletext, 
    required this.colorSmallContainer, 
    this.onTap,
  });

  final String subtitletext;
  final String titletext;
  final Color colorSmallContainer;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {

      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: const Color(0xff000000),
                width: 1,
              ),
            ),
          ),
          Positioned(
            top: 7,
            right: 7,
            child: Container(
              width: 52,
              height: 56,
              decoration: BoxDecoration(
                color: colorSmallContainer,
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
          Positioned(
            top: 14,
            right: 72,
            child: Text(titletext, style: TextStyles.regular16),
          ),
          Positioned(
            top: 38,
            right: 72,
            left: 7,
            child: Text(subtitletext, style: TextStyles.regular16),
          ),
        ],
      ),
    );
  }
}
