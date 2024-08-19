
            import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/Contract%20attachments/Presentation/views/contract_attachments_view.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../Add New Address/Presentation/Views/Widgets/custom_button_in_add_new_addrease.dart';

class CustomButtonNext extends StatelessWidget {
              const CustomButtonNext({super.key});
          
            @override
            Widget build(BuildContext context) {
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: CustomButtonInAddNewAddrease( 
                                              onTap: () {
                                                Navigator.of(context).pushNamed(ContractAttachmentsView.routeName);
                                                  }, 
                                                    alignment:   Alignment.center, 
                                                    colorBackGround: Colors.black,
                                                      tixtInButton: Center(
                                                    child: Text('التالي',
                                                    style: TextStyles.regular18.copyWith(color: Colors.white),
                                                    ),
                                                ),
                                                    width: 108.w, height: 40.h, 
                                                    colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                                                      ),
                            ),
    );
  }
}