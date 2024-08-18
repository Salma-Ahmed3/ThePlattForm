import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_style.dart';

class CustomSalary extends StatelessWidget {
  const CustomSalary({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
                Text('‏9,800.00  ريال' , style: TextStyles.regular14,),
                const SizedBox(width: 10,),
                Text('‏12,800.00 ' , style: TextStyles.regular14,),
      ],
    );
  }
}