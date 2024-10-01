import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/cubit/Hourly_Services/hourly_services_cubit.dart';
import 'package:nowproject/components/custom_dialog/custom_dialog.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/utility/card_item.dart';
import 'package:nowproject/Screens/Resident%20service/components/global_data.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';
import 'package:nowproject/utility/enums.dart';

class HourlyServicesViewBody extends StatelessWidget {
  const HourlyServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HourlyServicesCubit>().fetchHourlyServices('hourly');
    return BlocBuilder<HourlyServicesCubit, HourlyServicesState>(
      builder: (context, state) {
        if (state is HourlyServicesLoading) {
          return Center(
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
                Text('اختر الخدمة المطلوبة',
                    style: TextStyles.regular18
                        .copyWith(color: Colors.green[200])),
                SizedBox(height: 24.h),
                ...state.services.map((service) {
                  return Column(
                    children: [
                      GestureDetector(
                        child: CustomButton(
                          onTap: () {
                            globalData.serviceId = service.id;
                            if (service.serviceNote != null) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return CustomDialogHourly(
                                    titleText: service.serviceNote ?? '',
                                    service: service,
                                  );
                                },
                              );
                            } else {
                              BlocProvider.of<FirstStepCubit>(context)
                                  .serviceType = ServiceType.hourlyServiceType;
                              globalData.serviceId = service.id;
                              BlocProvider.of<FirstStepCubit>(context)
                                  .fetchFirstStep(
                                serviceType: ServiceType.hourlyServiceType,
                                object: FirstStepObjParameter(
                                  serviceId: service.id,
                                  fromOffer: false,
                                ),
                                context: context,
                              );
                            }
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
