
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/Add%20New%20Address/Presentation/Views/Widgets/custom_button_in_add_new_addrease.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../Home/Presentation/Views/Widgets/test_page.dart';

class CustomButtonInAddNewAddreaseItem extends StatelessWidget {
  const CustomButtonInAddNewAddreaseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         CustomButtonInAddNewAddrease(
                  onTap: () {
                    Navigator.pop(context);
                  }, alignment:  Alignment.centerRight, 
                  colorBackGround: Colors.transparent, 
                  tixtInButton:  Center(
                    child: Text('السابق',
                     style: TextStyles.regular18,
                     ),
                  ), width: 108.w, height: 47.h, colorBorder:  const Color(0xff000000) ,
                 ),
                 CustomButtonInAddNewAddrease(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TestPage()));
                  }, alignment:  Alignment.centerLeft, 
                  colorBackGround: Colors.black,
                  tixtInButton: Center(
                    child: Text('التالي',
                      style: TextStyles.regular18.copyWith(color: Colors.white),
                      ),
                  ), width: 108.w, height: 47.h, colorBorder:  const Color(0xff000000) ,
                 ),
      ],
    );
  }
}