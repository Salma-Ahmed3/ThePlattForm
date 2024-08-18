import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_packege_duration.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_salary.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomDetailesInChoosePackege extends StatelessWidget {
  const CustomDetailesInChoosePackege({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
              width: 384,
              height: 128,
              decoration: BoxDecoration(
                color: const Color(0xffD6D6D6),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color:  Colors.black,
                  // width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('سائق خاص - باكستان - شهر' , style: TextStyles.bold14,),
                              const SizedBox(height: 12,),
                          
                        const CustomPackageDuration(),
                              const SizedBox(height: 11,),
                        CustomSalary(),
                       
                      ],
                    ),
                     Positioned(
                      top: 26,
                      left: 17,
                       child: CircleAvatar(
                         
                        radius: 24,
                        backgroundColor:  Colors.transparent,
                        child: IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.add , color: Colors.black,),
                        ),
                      ),
                     )
                  ],
                  
                ),
              ),
            ),
    );
  }
}