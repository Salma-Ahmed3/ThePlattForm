import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/Add%20New%20Address/Presentation/Views/Widgets/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/Feauters/Contract%20attachments/Presentation/views/contract_attachments_view.dart';
import 'package:nowproject/Feauters/Contract/Presentation/View/Widgets/custom_button_next.dart';
import 'package:nowproject/Feauters/Contract/Presentation/View/Widgets/custom_contract_items.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/core/utils/app_text_style.dart';
import 'custom_text_contract.dart';

class ContractViewBody extends StatelessWidget {
  const ContractViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 23),
        const CustomTextContract(),
        const SizedBox(height: 16),
        CustomButtonInAddNewAddrease( 
                    onTap: () {
                    Navigator.of(context).pushNamed(TestPage.routeName);
                  }, 
                      alignment:   Alignment.center, 
                      colorBackGround: Colors.black,
                      tixtInButton: Center(
                      child: Text('تحميل التعاقد',
                      style: TextStyles.regular12.copyWith(color: Colors.white),
                      ),
                  ),
                      width: 108.w, height: 40.h, 
                      colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(10) ,
                        ),
                        const SizedBox(height: 23),
                        const CustomContractItems() , 
                        const SizedBox(height: 32),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 26),
                           child: CustomButtonNext(
                            onTap:  () {
                                               Navigator.of(context).pushNamed(ContractAttachmentsView.routeName);
                                                 }, 
                                                   ),
                         ),
              ],
    );
  }
}
