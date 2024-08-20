import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/core/Widgets/custom_circle_avatar_dialog.dart';
import 'package:nowproject/core/utils/app_images.dart';
import 'package:nowproject/core/utils/app_text_style.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../Feauters/Add New Address/Presentation/Views/Widgets/custom_button_in_add_new_addrease.dart';

class CustomDialogHourly extends StatelessWidget {
  const CustomDialogHourly({super.key});

  static const routeName = 'CustomDialog';

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.topCenter,
   
      children: [
       
        Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          const SizedBox(height: 19,),
                            SvgPicture.asset(
                              Assets.imagesErrorIcon, 
                            ),
                            const SizedBox(height: 13),
                            Text(
                              'هذه الخدمة تقدم للعائلات فقط',
                              style: TextStyles.semiBold18,
                            ),
                            const SizedBox(height: 14),
                            Text(
                              'نعتذر على عدم تقديم الخدمة في حالة عدم وجود سيدة بالمنزل',
                              style: TextStyles.regular14,
                            ),
                            
                            const SizedBox(height: 16),
                              Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                
                                CustomButtonInAddNewAddrease(
                                onTap: () {
                                Navigator.pop(context);
                                },
                                alignment: Alignment.centerRight, 
                                colorBackGround: Colors.transparent, 
                                tixtInButton:  Center(
                                child: Text('رجوع',
                                style: TextStyles.regular18,
                                ),
                                ), width: 108.w ,
                                height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8),
                              ), 
                              //  SizedBox(width: 19 ,),    
                              CustomButtonInAddNewAddrease(
                                onTap: () {
                                Navigator.of(context).pushNamed(TestPage.routeName);
                                },
                                alignment: Alignment.centerRight, 
                                colorBackGround: Colors.black, 
                                tixtInButton:  Center(
                                child: Text('التالي',
                                style: TextStyles.regular18.copyWith(color: Colors.white),
                                ),
                                ), width: 108.w, height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                                ),       
                                ],
                            ),
                            
                          ],
                          
                        ),
                        
                      ),
                      
                    ),
        ),
         const Positioned(
          top: 283,
          child: CustomCircleAvatar()),
      ],
    );
  }
}
