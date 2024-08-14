import 'package:flutter/material.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomTextInPhoto extends StatelessWidget {
  const CustomTextInPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return  
         Center(
          
           child: Column(
             children: [
              const SizedBox(
                  height: 49,
                ),
                       Image.asset('assets/images/picture.png'),      
                       const SizedBox(
                        height: 16,
                       ),
                       const Text('صورة مصممه خصيصاً للعروض',style: TextStyles.regular12),
             ],
           ),
         );
     
  }
}