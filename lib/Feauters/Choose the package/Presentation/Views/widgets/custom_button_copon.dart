
import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_container_nationality.dart';

import '../../../../../core/utils/app_text_style.dart';

class CustomButtonCopon extends StatelessWidget {
  const CustomButtonCopon({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(    children: [
       const CustomContainerNationality(
        titleText: 'هل تمتلك كوبون خصم؟',
         widthContainer: 200,
         ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('KSA-Day95', style: TextStyles.regular12,),
           Container(
        width: 92,
        height: 40,
        decoration: BoxDecoration(
          color:  Colors.black ,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'تطبيق الخصم',
            style: TextStyles.regular12.copyWith(
          color: Colors.white 

              ),
          ),
          ),
          ), 
           ],
          ),
          ),
          ],
          );
  }
}
