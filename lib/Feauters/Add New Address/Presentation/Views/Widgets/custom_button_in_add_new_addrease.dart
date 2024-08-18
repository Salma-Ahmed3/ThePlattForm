import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonInAddNewAddrease extends StatelessWidget {
  const CustomButtonInAddNewAddrease({
    super.key,
     this.onTap,
      required this.alignment, 
      required this.colorBackGround, 
      required this.tixtInButton});
final void Function()? onTap;
final AlignmentGeometry alignment;
final Color colorBackGround;
final Widget tixtInButton;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
                    width: 108.w,
                    height: 47.h,
                    decoration: BoxDecoration(
                      color: colorBackGround,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xff000000),
                        width: 1.w,
                      ),
                    ),
                    child:tixtInButton,
                  ),
                );
   
  }
}