import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Hourly%20service/components/custom_auto_size_text.dart';
import 'package:nowproject/Screens/Hourly%20service/horly_services_data.dart';
import 'package:nowproject/components/Loader_custom/loader_custom.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/utility/card_item.dart';

class HourlyServicesViewBody extends StatefulWidget {
  const HourlyServicesViewBody({super.key});

  @override
  State<HourlyServicesViewBody> createState() => _HourlyServicesViewBodyState() ;
}

class _HourlyServicesViewBodyState extends State<HourlyServicesViewBody> with ServiceData {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: BlocBuilder(
            bloc: serviceApp,
            builder: (context, state) {
              if (serviceApp.state.data!.isEmpty == true &&
                    loading.state.loading != true) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('لا توجد خدمات متاحه', style: TextStyles.regular16),
                      SizedBox(height: 20.h),
                    ],
                  ),
                );
              }
              if (loading.state.loading != true &&
                    serviceApp.state.data!.isEmpty == false) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextAutoSize(
                      textAlign: TextAlign.start,
                      text: '',
                      fontSize: 20.sp,
                      fontFamily: TextStyles.medium16.fontFamily,
                      color: Colors.black,
                    ),
                    SizedBox(height: 16.h),
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: serviceApp.state.data!.length,
                        itemBuilder: (context, index) {
                          // var service = serviceApp.state.data![index];
                          return CustomButton(
                            titletext: serviceApp.state.data![index].name.toString(),
                            subtitletext: serviceApp.state.data![index].description.toString(),
                            colorSmallContainer: const Color(0xffD6D6D6),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                );
              }
              return const SizedBox();
            },
          ),
        ),
          Loader(
          loading: loading,
        ),
      ],
    );
  }
}
