import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/custom_dot_color.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/custom_photo.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 33,),
        CustomPhoto(),
          SizedBox(height: 16,),

        CustomDotCircle(),
        ],
      ),
    );
  }
}






 