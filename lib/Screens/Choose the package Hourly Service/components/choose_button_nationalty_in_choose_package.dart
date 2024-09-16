import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButtonNationaltyInChoossePackage extends StatefulWidget {
  const CustomButtonNationaltyInChoossePackage({
    super.key,
    required this.nationalityText,
    required this.image,
  });

  final String nationalityText;
  final String image;

  @override
  _CustomButtonNationaltyInChoossePackageState createState() => _CustomButtonNationaltyInChoossePackageState();
}

class _CustomButtonNationaltyInChoossePackageState extends State<CustomButtonNationaltyInChoossePackage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Row(
        children: [
          CustomButtonInAddNewAddrease(
            alignment: Alignment.center,
            colorBackGround: isSelected ? Color(0xffD6D6D6) : Colors.white,
            tixtInButton: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Image.network(
                    widget.image.isNotEmpty ? widget.image : Assets.imagesUserIcon,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error);
                    },
                  ),
                  const SizedBox(width: 5),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.nationalityText,
                      style: TextStyles.regular12.copyWith(
                        color: isSelected ? Colors.black : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            width: 117.w,
            height: 35.h,
            colorBorder: isSelected ? Colors.black : Color(0xffD6D6D6),
            borderRadius: BorderRadius.circular(10),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
