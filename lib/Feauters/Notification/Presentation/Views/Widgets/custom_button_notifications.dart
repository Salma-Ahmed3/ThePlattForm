
import 'package:flutter/material.dart';
import 'package:nowproject/core/utils/app_images.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomButtonNotifications extends StatelessWidget {
  const CustomButtonNotifications({
    super.key,
    required this.subtitletext,
    required this.titletext,
    required this.colorSmallContainer,
    this.onTap,
    this.onDelete,
  });

  final String subtitletext;
  final String titletext;
  final Color colorSmallContainer;
  final void Function()? onTap;
  final void Function()? onDelete; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
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
          const Positioned(
            top: 12,
            bottom: 16,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Color(0xffD6D6D6),
            ),
          ),
          Positioned(
            top: 15,
            right: 63,
            child: Text(titletext, style: TextStyles.regular10),
          ),
          Positioned(
            top: 29,
            right: 63,
            bottom: 19,
            child: Text(subtitletext, style: TextStyles.regular12),
          ),
          Positioned(
            top: 18,
            bottom: 26,
            left:16,
           child: GestureDetector(
              onTap: onDelete ?? () {
               
              },
              child: Image.asset(
                Assets.imagesDeleteIcon,
                width: 12,
                height: 14, 
              ),),
          ),
        ],
      ),
    );
  }
}
