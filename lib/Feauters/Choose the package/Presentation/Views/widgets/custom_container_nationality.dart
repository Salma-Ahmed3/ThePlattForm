
import 'package:flutter/material.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomContainerNationality extends StatelessWidget {
  const CustomContainerNationality({super.key, required this.titleText, required this.widthContainer});
final String titleText;
final double widthContainer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 81,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: const Color(0xff000000),
                  width: 1,
                ),
              ),
            ),
            Positioned(
              top: -10,  
              right: 14,
              child: Container(
                width: widthContainer,
                height: 18,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    titleText,
                    style: TextStyles.regular14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
