import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choosing%20Carrer/Presentation/Views/chossing_carrer_view.dart';
import 'package:nowproject/Feauters/Resident%20service/Presentation/Views/Widgets/button_in_resident_service.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class ResidentServiceViewBody extends StatelessWidget {
  const ResidentServiceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
    
        children: [
          const SizedBox(height: 30,),
          const Text(' اختيار العنوان من عناوينك السابقة' , style: TextStyles.regular18,),
          const SizedBox(height: 32,),
      ButtonInResidentService( titletext: '15 طريق الثمامة الفرعي - الرياض المملكة العربية السعودية', 
      onChanged: (bool value) { 
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChossingCarrerView()),
            );
       },
        colorBackGroun: Color(0xffF8F8F8), colorBorder: Colors.black,),
          const SizedBox(height: 12,),
      ButtonInResidentService( titletext:'7898 طريق الامير تركي بن عبدالعزيز الأول، المعذر، الرياض 12721، السعودية', onChanged: (bool value) {     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChossingCarrerView()),
            ); }, colorBackGroun: Colors.transparent, colorBorder: Color(0xffACACAC),),
          const SizedBox(height: 12,),
          ButtonInResidentService( titletext: 'المهيني، الشرفية، الرياض 12724، السعودية', onChanged: (bool value) {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChossingCarrerView()),
            ); }, colorBackGroun: Colors.transparent, colorBorder: Color(0xffACACAC),),

     
        ],
      ),
    );
  }
}
