import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/cubit/Hourly_Services/hourly_services_cubit.dart';
import 'package:nowproject/components/custom_dialog/custom_dialog.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/utility/card_item.dart';

class HourlyServicesViewBody extends StatelessWidget {
  const HourlyServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Trigger fetching services when the widget is built
    context.read<HourlyServicesCubit>().fetchHourlyServices('hourly');

    return BlocBuilder<HourlyServicesCubit, HourlyServicesState>(
      builder: (context, state) {
        if (state is HourlyServicesLoading) {
          return  Center(
            child: SizedBox(
              width: 80.w,
              height: 100.h,
              child: Image.asset(Assets.imagesclockloader),
              ),
            );
        } else if (state is HourlyServicesFailure) {
          return Center(child: Text(state.error));
        } else if (state is HourlyServicesSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Text('اختر الخدمة المطلوبة', style: TextStyles.regular18),
                SizedBox(height: 24.h),
                ...state.services.map((service) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const CustomDialogHourly();
                            },
                          );
                        },
                        child: CustomButton(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const CustomDialogHourly();
                              },
                            );
                          },
                          titletext: service.name,
                          subtitletext: service.description,
                          colorSmallContainer: const Color(0xffD6D6D6),
                          image: service.iconUrl,
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  );
                }).toList(),
              ],
            ),
          );
        } else {
          return const Center(child: Text("لا يوجد خدمات متاحه"));
        }
      },
    );
  }
}
