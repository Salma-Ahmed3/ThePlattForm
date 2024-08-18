import 'package:flutter/material.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class ChoosePackageViewBody extends StatelessWidget {
  const ChoosePackageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 27,),
        ChosseNationality()
      ],
    );
  }
}



class ChosseNationality extends StatelessWidget {
  const ChosseNationality({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 384,
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
                width: 70,
                height: 18,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'الجنسية',
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

      