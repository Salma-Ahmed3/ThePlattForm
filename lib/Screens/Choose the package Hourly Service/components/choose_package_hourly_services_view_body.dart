import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/choose_button_nationalty_in_choose_package.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_button_package_duration_item.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_button_periods_in_chosse_package.dart';
import 'package:nowproject/cubit/Nationality/nationality_state.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/cubit/Nationality/nationality_cubit.dart';

          class ChoosePackageHourlyServicesViewBody extends StatelessWidget {
            const ChoosePackageHourlyServicesViewBody({super.key});
          
            @override
            Widget build(BuildContext context) {
                context.read<NationalityCubit>().nationality("7c629592-579e-ee11-b767-000d3a236f24");
                return Stack(
                  children: [
                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 17),
                            BlocConsumer<NationalityCubit, NationalityState>(
                                  listener: (context, state) {
                                          if (state is NationalityFailure) {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(content: Text(state.error)),
                                            );
                                          }
                                  },
                                  builder: (context, state) {
                                          if (state is NationalityListUpdate) {
                                            return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الجنسيه',
                            style: TextStyles.regular12,
                          ),
                          SizedBox(
                            height: 60.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.nationalities.length, 
                              itemBuilder: (context, index) {
                                return CustomButtonNationaltyInChoossePackage(
                                  nationalityText: state.nationalities[index].value!,
                                  image: state.nationalities[index].image!,
                                  
                                );
                              },
                            ),
                          ),
                        ],
                                            );
                                          }
                                          return const SizedBox.shrink();
                                  },
                                ),
                                          
                                const SizedBox(height: 12),
                                Text('الفترة', style: TextStyles.regular12),
                                const SizedBox(height: 14),
                                const SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: CustomButtonPeriodsInChoosePackage(
                                          text1: 'صباحي',
                                          text2: 'مسائي',
                                          width: 180,
                                          height: 38,
                                  ),
                                ),
                                // const SizedBox(height: 15),
                                // Text('مواعيد التوصيل', style: TextStyles.regular12),
                                // const SizedBox(height: 15),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Expanded(
                                //       child: Text(
                                //         'الفترة الصباحية:من 8 ص الى 5 م',
                                //         style: TextStyles.regular12,
                                //         textAlign: TextAlign.start,
                                //       ),
                                //     ),
                                //     const SizedBox(width: 5),
                                //     Expanded(
                                //       child: Text(
                                //         'الفترة المسائية:من 5 م الى 9 م',
                                //         style: TextStyles.regular12,
                                //         textAlign: TextAlign.end,
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                // const SizedBox(height: 20),
                                // Text('عدد الساعات', style: TextStyles.regular12),
                                // const SizedBox(height: 12),
                                // const CustomButtonPeriodsInChoosePackage(
                                //   text1: '4 ساعة ',
                                //   text2: '8 ساعة',
                                //   width: 117,
                                //   height: 35,
                                // ),
                                // const SizedBox(height: 12),
                                // Text('توقيت الزياره', style: TextStyles.regular12),
                                // const SizedBox(height: 12),
                                // const CustomButtonPeriodsInChoosePackage(
                                //   text1: 'من 8 ص الى 10 ص',
                                //   text2: 'من 10صالى 12 ص',
                                //   width: 117,
                                //   height: 35,
                                // ),
                                const SizedBox(height: 20),
                                Text('مدة الباقه', style: TextStyles.regular12),
                                const SizedBox(height: 12),
                                const SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: CustomButtonPackageDurationItem(),
                                ),
                                // const SizedBox(height: 17),
                                // const CustomDetailesInChoosePackegeHourlyServices(),
                                // const SizedBox(height: 17),
                                // const CustomDetailesInChoosePackegeHourlyServices(),
                                // const SizedBox(height: 17),
                                // const CustomDetailesInChoosePackegeHourlyServices(),
                                // const SizedBox(height: 17),
                                // const CustomDetailesInChoosePackegeHourlyServices(),
                                // const SizedBox(height: 17),
                                // const CustomDetailesInChoosePackegeHourlyServices(),
                              ],
                            ),
                          ),
                        ),
                      // Center(
                      //   child:
                      //   Image.asset(
                      //   Assets.imagesclockloader , width: 80.w, height: 100.h,)
                      //   ),
                      ],
                      
                );
  }
}
