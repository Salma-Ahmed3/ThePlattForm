import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/core/Widgets/custom_check_box.dart';
import 'package:nowproject/core/utils/app_text_style.dart';


class ChossingCarrerViewBody extends StatelessWidget {
  const ChossingCarrerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          const SizedBox(height: 34,),
          Text('اختر الخدمة المطلوبة', style: TextStyles.regular14),
          const SizedBox(height: 15,),
           ButtonInResidentServiceChosseCarrer(
            onChanged: (bool value) { 
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TestPage()),
            );
       },
            ),
          
        
        ],
      ),
    );
  }
}
class ButtonInResidentServiceChosseCarrer extends StatefulWidget {
  const ButtonInResidentServiceChosseCarrer({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;


  @override
  State<ButtonInResidentServiceChosseCarrer> createState() => _ButtonInResidentServiceChosseCarrerState();
}

class _ButtonInResidentServiceChosseCarrerState extends State<ButtonInResidentServiceChosseCarrer> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // backGround Containear
          Container(
            width: 384,
            height: 252,
            decoration: BoxDecoration(
              color: const Color(0xffF8F8F8),
              borderRadius: BorderRadius.circular(21),
            ),
                 ),
           // Essential Containear
           Positioned(
            top: 41,
            left: 20,
            right: 20,
             child: Container(
                width:343,
                height: 76,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black,
                
                  ),
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    children: [
                                const TextChoosingCarrer(), 
                                SizedBox(width: 34,),
                                CustomCheckBox( onChecked: (value) {
                                isTermsAccepted = value;
                                widget.onChanged(value);
                                setState(() {});
                              },
                              isChecked: isTermsAccepted,)
                                  
                    ],
                  ),
                ),
                       
                   
                   
              ),
           ),
        ],
      ),
    );
         
  }
}
class TextChoosingCarrer extends StatelessWidget {
  const TextChoosingCarrer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      children: [

                Text('سائق خاص' , style: TextStyles.bold14),
                  Text(
                    'تقدم الخدمة بعقود شهرية من شهر الي 24 شهر' ,
                  style: TextStyles.regular12),
      ],
    );
  }
}