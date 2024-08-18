import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_button_nationality.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_detailes_in_choose_packege.dart';
import 'custom_button_copon.dart';

class ChoosePackageViewBody extends StatelessWidget {
  const ChoosePackageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 18,),
        CustomButtonNationality(),
        SizedBox(height: 24,),
        CustomButtonCopon(),
        SizedBox(height: 15,),
        CustomDetailesInChoosePackege()
      ],
    );
  }
}

