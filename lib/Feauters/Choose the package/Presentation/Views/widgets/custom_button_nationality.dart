import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/nationality_text.dart';
import 'custom_container_nationality.dart';

class CustomButtonNationality extends StatelessWidget {
  const CustomButtonNationality({super.key, });
  @override
  Widget build(BuildContext context) {
    return  const Stack(
    children: [
       CustomContainerNationality(titleText: 'الجنسيه', widthContainer: 70,),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NationalityText(nameNationality: 'الفلبين',),
            NationalityText(nameNationality: 'تايلاند',),
            NationalityText(nameNationality: 'اندونيسيا',)
          ],
        ),
      ),
    
    ],
    );
  }
}

