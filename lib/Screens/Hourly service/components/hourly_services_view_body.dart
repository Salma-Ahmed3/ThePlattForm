import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Models/hourly/service.dart';
import 'package:nowproject/components/Loader_custom/loader_custom.dart';
import 'package:nowproject/components/custom_dialog/custom_dialog.dart';
import 'package:nowproject/cubit/generic_cubit/generic_cubit.dart';
import 'package:nowproject/cubit/generic_cubit/generic_state.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/utility/card_item.dart';
import 'package:nowproject/Screens/Hourly%20service/horly_services_data.dart';

class HourlyServicesViewBody extends StatefulWidget {
  const HourlyServicesViewBody({super.key});

  @override
  State<HourlyServicesViewBody> createState() => _HourlyServicesViewBodyState();
}

class _HourlyServicesViewBodyState extends State<HourlyServicesViewBody> with ServiceData {
  @override
  void initState() {
    super.initState();
    initData(); // Call initData with context
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: serviceApp, // Pass the correct bloc
      builder: (context, state) {
        if (loading.state.loading == true) {
          return  Center(child: Loader(
            loading: loading,

          )); 
        }

        if (serviceApp.state.data == null ||serviceApp.state.data!.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('لا يوجد خدمات متاحة', style: TextStyles.regular18),
                SizedBox(height: 20.h),
              ],
            ),
          );
        }

        // Render UI if services are available
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Text('اختر الخدمة المطلوبة', style: TextStyles.regular18),
                  SizedBox(height: 24.h),
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
                      titletext: serviceApp.state.data![0].name ?? '', // Use data safely with null check
                      subtitletext: serviceApp.state.data![0].description ?? '',
                      colorSmallContainer: const Color(0xffD6D6D6),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const CustomDialogHourly();
                        },
                      );
                    },
                    titletext: 'عاملة تنظيف بالمواد المطلوبة',
                    subtitletext: 'تقدم الخدمة بعقود شهرية من شهر الى 24 شهر',
                    colorSmallContainer: const Color(0xffACACAC),
                  ),
                ],
              ),
              Loader(loading: loading), // Loader inside the stack for better positioning
            ],
          ),
        );
      },
    );
  }
}
