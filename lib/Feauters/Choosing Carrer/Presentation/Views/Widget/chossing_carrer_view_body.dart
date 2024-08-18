import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/choose_package_view.dart';
import 'package:nowproject/Feauters/Choosing%20Carrer/Presentation/Views/Widget/button_in_resident_service_choosse_carrer.dart';
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

            Center(
            
              child: Container(
              width: 384,
      height: 252,
      decoration: BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(21),
        border: Border.all(
          color: const Color(0xffF8F8F8),
        ),
      ),
               child:
                Column(
                  
                  children: [
                    const SizedBox(height: 41,),

                    ButtonInResidentServiceChooseCareer(
                    onChanged: (bool value) { 
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChoosePackageView()),
                    );
                    },
                              titletext: 'سائق خاص', 
                              subtext: 'تقدم الخدمة بعقود شهرية من شهر الي 24 شهر',
                              colorBackGroun: Colors.white,
                              colorBorder: const Color(0xffACACAC),
                    ),
                    
                    const SizedBox(height: 17,),
                    
                    ButtonInResidentServiceChooseCareer(
                    onChanged: (bool value) { 
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChoosePackageView()),
                    );
                    },
                              titletext: 'عاملة منزلية', 
                              subtext: 'تقدم الخدمة بعقود شهرية من شهر الي 24 شهر',
                              colorBackGroun: Colors.white,
                              colorBorder: const Color(0xffACACAC),
                    ),
                  ],
                ),
             ),
           ),
          
        
        ],
      ),
    );
  }
}

