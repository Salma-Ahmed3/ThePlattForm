import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choose%20the%20package%20Hourly%20Service/Presentation/Views/Widgets/choose_button_nationalty_in_choose_package.dart';
import 'package:nowproject/Feauters/Choose%20the%20package%20Hourly%20Service/Presentation/Views/Widgets/custom_button_periods_in_chosse_package.dart';
import 'package:nowproject/core/Widgets/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

import '../../../../Choose the package Individual Service/Presentation/Views/widgets/custom_detailes_in_choose_packege.dart';

class ChoosePackageHourlyServicesViewBody extends StatelessWidget {
  const ChoosePackageHourlyServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 17,),
          Text('الجنسيه'  , style: TextStyles.regular12,),
          const SizedBox(height: 12,),
                  const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: CustomButtonNationaltyInChoossePackage()),
          const SizedBox(height: 12,),
          Text('الفترة'  , style: TextStyles.regular12,),
          const SizedBox(height: 14,),
          const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
            child:  CustomButtonPeriodsInChoosePackage(text1: 'صباحي', text2: 'مسائي', width: 180, height: 38,),
            ),
          const SizedBox(height: 15,),
          Text('مواعيد التوصيل'  , style: TextStyles.regular12,),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                    Expanded(
                      child: Text(
                        'الفترة الصباحية:من 8 ص الى 5 م',
                        style: TextStyles.regular12,
                        textAlign: TextAlign.start, 
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Expanded(
                            child: Text(
                              'الفترة المسائية:من 5 م الى 9 م',
                              style: TextStyles.regular12,
                              textAlign: TextAlign.end, 
                            ),
                          ),
                        ],
                      ),
                        const SizedBox(height: 20,),
                        Text('عدد الساعات'  , style: TextStyles.regular12,),
                        const SizedBox(height: 12,),
                      const CustomButtonPeriodsInChoosePackage(text1: '4 ساعة ', text2: '8 ساعة', width: 117, height: 35,),
                        const SizedBox(height: 12,),
                        Text('توقيت الزياره'  , style: TextStyles.regular12,),
                        const SizedBox(height: 12,),
                              const CustomButtonPeriodsInChoosePackage(text1: 'من 8 ص الى 10 ص', text2: 'من 10صالى 12 ص', width: 117, height: 35,),
                        const SizedBox(height: 20,),
                        Text('مدة الباقه'  , style: TextStyles.regular12,),
                        const SizedBox(height: 12,),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CustomButtonPackageDuration(textPackageDuration: 'شهر',),
                        SizedBox(width: 6,),
              
                              CustomButtonPackageDuration(textPackageDuration: 'شهرين',),
                        SizedBox(width: 6,),
              
                              CustomButtonPackageDuration(textPackageDuration: '3شهور',),
                        SizedBox(width: 6,),
              
                              CustomButtonPackageDuration(textPackageDuration: '6شهور',),
                        SizedBox(width: 6,),
              
                              CustomButtonPackageDuration(textPackageDuration: '12شهر',),
                        SizedBox(width: 6,),
              
                              CustomButtonPackageDuration(textPackageDuration: 'سنه',),
                            ],
                          ),
                        ),
                          const SizedBox(height: 17,),
                        const CustomDetailesInChoosePackege(heightContainer: 152, workerData: '', textPackageDuration: '',)
                        
                  ],
              ),
            );
  }
}

class CustomButtonPackageDuration extends StatelessWidget {
  const CustomButtonPackageDuration({super.key, required this.textPackageDuration});
final String textPackageDuration;
  @override
  Widget build(BuildContext context) {
    return CustomButtonInAddNewAddrease(
                                      alignment: Alignment.centerRight, 
                                      colorBackGround: const Color(0xffD6D6D6), 
                                      tixtInButton:  Center(
                                      child: Text(textPackageDuration,
                                      style: TextStyles.regular12
                                      ),
                                      ), width: 71,
                                      height: 35, colorBorder:  const Color(0xffD6D6D6), borderRadius: BorderRadius.circular(10),
                                    );
  }
}
