import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/Add%20New%20Address/Presentation/Views/Widgets/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/home_view.dart';
import 'package:nowproject/core/Widgets/custom_circle_avatar_dialog.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/my_requests_view.dart';
import 'package:nowproject/core/utils/app_images.dart';
import 'package:nowproject/core/utils/app_text_style.dart';
import 'custom_container_wallet_balance.dart';

class ContractSuccessViewBody extends StatelessWidget {
  const ContractSuccessViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 109.h,),
        Image.asset(Assets.imagesSuccess , width: 500 , height: 128),
        Text('تم تسجيل التعاقد بنجاح' , style: TextStyles.bold20,),
        SizedBox(height: 13.h,),
        Text('‏8258745HIJH رقم العقد' , style: TextStyles.bold16,),
        SizedBox(height: 15.h,),
        Text('قيمة العقد ‏9,800.00 ريال' , style: TextStyles.regular20,),
        SizedBox(height: 15.h,),
        const CustomContainerWalletBalance(),
        SizedBox(height: 26.h,),
        const CustomButtonPush(),
        SizedBox(height: 15.h,),
        Text('ملاحظة: لديك ساعة واحدة فقط للدفع' , 
        style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),),
        SizedBox(height: 5.h,),
        Text('عملية إلغاء العقد تتم بشكل تلقائي ,' , 
        style: TextStyles.regular14),
      ],
    );
  }
}
class CustomButtonPush extends StatelessWidget {
  const CustomButtonPush({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogPush();
                },
              );
      },
      child: Container(
        width: 305.w,
        height: 47.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text('ادفع 110 ريال لتفعيل التعاقد' ,style: TextStyles.regular18.copyWith(color: Colors.white), )) ,
      ),
    );
  }
}

class CustomDialogPush extends StatelessWidget {
  const CustomDialogPush({super.key});

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
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 38),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                          const SizedBox(height: 36,),
                            Image.asset(
                              Assets.imagesSuccess, 
                            ),
                            const SizedBox(height: 19),
                            Text(
                              'تم تسجيل التعاقد بنجاح',
                              style: TextStyles.bold20,
                            ),
                            const SizedBox(height: 30),
                            CustomButtonInAddNewAddrease(
                                onTap: () {
                                Navigator.of(context).pushNamed(MyRequestsView.routeName);
                                },
                                alignment: Alignment.centerRight, 
                                colorBackGround: Colors.black, 
                                tixtInButton:  Center(
                                child: Text('طلباتي',
                                style: TextStyles.regular18.copyWith(color: Colors.white),
                                ),
                                ), width: 193.w, height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                                ),  
                            const SizedBox(height: 17),
                            CustomButtonInAddNewAddrease(
                                onTap: () {
                                Navigator.of(context).pushNamed(HomeView.routeName);
                                },
                                alignment: Alignment.centerRight, 
                                colorBackGround: Colors.black, 
                                tixtInButton:  Center(
                                child: Text('الرئيسية',
                                style: TextStyles.regular18.copyWith(color: Colors.white),
                                ),
                                ), width: 193.w, height: 47.h, colorBorder:  const Color(0xff000000), borderRadius: BorderRadius.circular(8) ,
                                ),  
                          ],
                          
                        ),
                      ),
                      
                    ),
        ),
         const Positioned(
          top: 190,
          child: CustomCircleAvatar()),
      ],
    );
  }
}
