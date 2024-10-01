import 'package:flutter/material.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.subtitletext,
    required this.titletext,
    required this.colorSmallContainer,
    this.onTap,
     this.image,
  });
  final String subtitletext;
  final String titletext;
  final Color colorSmallContainer;
  final String? image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(
              // color: Colors.grey,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                children: [
                  Container(
                    width: 52,
                    height: 56,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:NetworkImage(image??'')
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 14,
                      ),
                      Text(titletext,
                          style: TextStyles.regular18
                              .copyWith(color: Colors.yellow)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(subtitletext,
                          style: TextStyles.regular12
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
