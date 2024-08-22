
import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Contract%20Success/Presentation/views/contract_success_view.dart';
import 'package:nowproject/core/Widgets/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/core/Widgets/custom_circle_avatar_dialog.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

class CustomClickInContractData extends StatelessWidget {
  const CustomClickInContractData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtonInAddNewAddrease(
                          onTap: () {
                               showDialog(
              context: context,
              builder: (BuildContext context) {
                return const DialogeShowVisits();
              },
            );
                          },
                          alignment: Alignment.centerRight, 
                          colorBackGround: Colors.transparent, 
                          tixtInButton:  Center(
                          child: Text('عرض الزيارات',
                          style: TextStyles.regular18,
                          ),
                          ), width: 167,
                          height: 48, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8),
                        ), 
                CustomButtonInAddNewAddrease(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, ContractSuccessView.routeName);
                          },
                          alignment: Alignment.centerRight, 
                          colorBackGround: Colors.black, 
                          tixtInButton:  Center(
                          child: Text('إتمام التعاقد',
                          style: TextStyles.regular18.copyWith(color:  Colors.white),
                          ),
                          ), width: 152,
                          height: 47, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8),
                        ),
              ],
            ),
          );
  }
}
class DialogeShowVisits extends StatelessWidget {
  const DialogeShowVisits({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 50),
                Text('الزيارات المتوقعة', style: TextStyles.semiBold18),
                const SizedBox(height: 20),
                RectangleShowVisits(text: 'الأحد, ‏26 أغسطس 2023',),
                const SizedBox(height: 4),
                RectangleShowVisits(text: 'الأربعاء, 29 أغسطس 2023',),
                const SizedBox(height: 4),
                RectangleShowVisits(text: 'الأحد, 01 سبتمبر 2023',),
                const SizedBox(height: 4),
                RectangleShowVisits(text:'الخميس, 28 سبتمبر',),
                const SizedBox(height: 22),
                    CustomButtonInAddNewAddrease(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          alignment: Alignment.centerRight, 
                          colorBackGround: Colors.black, 
                          tixtInButton:  Center(
                          child: Text('اغلاق',
                          style: TextStyles.regular18.copyWith(color:  Colors.white),
                          ),
                          ), width: 152,
                          height: 47, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8),
                        ),
                const SizedBox(height: 31),

                  ]
              )
          )
            ),
              const Positioned(
                                  top: 125,
                                  child: CustomCircleAvatar(),
                                ),
        ]
        );
  }
}
class RectangleShowVisits extends StatelessWidget {
  const RectangleShowVisits({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        width: 336,
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xffD6D6D6),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Align(
          alignment: Alignment.centerRight,
          child: 
          Row(
            children: [
              const SizedBox(width: 20,),
          Text(text , style: TextStyles.regular14,)]),
          
      ),
      )
      
    );
  }
}