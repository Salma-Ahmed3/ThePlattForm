
import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Contract%20Success/Presentation/views/contract_success_view.dart';
import 'package:nowproject/core/Widgets/custom_button_in_add_new_addrease.dart';
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