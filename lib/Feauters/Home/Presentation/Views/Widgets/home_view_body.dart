import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/custom_dot_circle.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/custom_photo.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(height: 33,),
          CustomPhoto(),
          SizedBox(height: 16,),
          CustomDotCircle(),
          SizedBox(height: 24,),
          DistinguishedServices(),
        ],
      ),
    );
  }
}

class DistinguishedServices extends StatelessWidget {
  const DistinguishedServices({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerRight, 
          child: Text('خدماتنا المميزة', style: TextStyles.regular16,),
        ),
        Align(
          alignment: Alignment.centerRight, 
          child: Text('مجموعة خدمات لا غنى عنها', style: TextStyles.regular16,),
        ),
      ],
    );
  }
}
