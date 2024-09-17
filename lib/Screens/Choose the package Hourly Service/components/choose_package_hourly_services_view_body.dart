import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/choose_button_nationalty_in_choose_package.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_button_package_duration_item.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_button_periods_in_chosse_package.dart';
import 'package:nowproject/cubit/Fixed_Package/fixed_package_cubit.dart';
import 'package:nowproject/cubit/Fixed_Package/fixed_package_state.dart';
import 'package:nowproject/cubit/Nationality/nationality_state.dart';
import 'package:nowproject/cubit/Period_cubit/period_cubit.dart';
import 'package:nowproject/cubit/Period_cubit/period_state.dart';
import 'package:nowproject/cubit/Time_Hours_cubit/time_hours_cubit.dart';
import 'package:nowproject/cubit/Time_Hours_cubit/time_hours_state.dart';
import 'package:nowproject/cubit/Visit_Time_Cubit/visit_cubit.dart';
import 'package:nowproject/cubit/Visit_Time_Cubit/visit_state.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/cubit/Nationality/nationality_cubit.dart';

import 'custom_detailes_in_choose_packege_hourly_services.dart';

class ChoosePackageHourlyServicesViewBody extends StatelessWidget {
  const ChoosePackageHourlyServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
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
                              'ما هي الجنسية المفضله ؟',
                              style: TextStyles.regular16,
                            ),
                            SizedBox(
                              height: 60.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.nationalities.length,
                                itemBuilder: (context, index) {
                                  return CustomButtonNationaltyInChoossePackage(
                                    nationalityText:
                                        state.nationalities[index].value!,
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
                  BlocConsumer<PeriodCubit, PeriodState>(
                    listener: (context, state) {
                      if (state is PeriodFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.error)),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is PeriodListUpdate) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ما هي الفترة المفضلة ؟',
                              style: TextStyles.regular16,
                            ),
                            SizedBox(
                              height: 60.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.periodmodel.length,
                                itemBuilder: (context, index) {
                                  return CustomButtonPeriodsInChoosePackage(
                                    time: state.periodmodel[index].value!,
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
                  Text('نوع العقد', style: TextStyles.regular16),
                  const SizedBox(height: 12),
                  const CustomButtonPackageDurationItem(),
                  const SizedBox(height: 24),
                  BlocConsumer<TimeHoursCubit, TimeHoursState>(
                    builder: (context, state) {
                      if (state is TimeLoading) {
                        return Center(
                          child: SizedBox(
                            width: 80.w,
                            height: 100.h,
                            child: Image.asset(Assets.imagesclockloader),
                          ),
                        );
                      } else if (state is TimeListUpdate) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('عدد الساعات', style: TextStyles.regular16),
                            SizedBox(
                              height: 60.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.timeHour.length,
                                itemBuilder: (context, index) {
                                  return CustomButtonPeriodsInChoosePackage(
                                    time: state.timeHour[index].value!,
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      }
                      return const SizedBox.shrink();
                    },
                    listener: (context, state) {
                      if (state is TimeFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.error)),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 12),
                  BlocConsumer<TimeVisitCubit, TimeVisitState>(
                    builder: (context, state) {
                      if (state is VisitTimeLoading) {
                        // return Center(
                        //   child: SizedBox(
                        //     width: 80.w,
                        //     height: 100.h,
                        //     child: Image.asset(Assets.imagesclockloader),
                        //   ),
                        // );
                      } else if (state is VisitTimeListUpdate) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('توقيت الزياره', style: TextStyles.regular16),
                            SizedBox(
                              height: 60.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.visitTimeModels.length,
                                itemBuilder: (context, index) {
                                  return CustomButtonPeriodsInChoosePackage(
                                    time: state.visitTimeModels[index].data!,
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      }
                      return const SizedBox.shrink();
                    },
                    listener: (context, state) {
                      if (state is VisitTimeFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.error)),
                        );
                      }
                    },
                  ),
                  BlocConsumer<FixedPackageCubit, FixedPackageState>(
                    builder: (context, state) {
                      log(state.toString(), name: "state222");
                      if (state is FixedPackageLoading) {
                        return Center(
                          child: SizedBox(
                            width: 80.w,
                            height: 100.h,
                            child: Image.asset(Assets.imagesclockloader),
                          ),
                        );
                      } else if (state is FixedPackageListUpdate ) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 500.h,
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount:
                                1,
                                itemBuilder: (context, index) {

                                // log(state.fixedPackag.data!.selectedPackages![index].displayName! , name: "name");
                                  return CustomDetailesInChoosePackegeHourlyServices(
                                  titleText: state.fixedPackag.data?.selectedPackages?[index].displayName ?? 'Default Title',
                                  packagePrice: state.fixedPackag.data?.selectedPackages![index].packagePrice.toString()??'',
                                  packagePriceWithoutDiscount: '',
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      }
                      return const SizedBox.shrink();
                    },
                    listener: (context, state) {
                      if (state is FixedPackageFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.error)),
                        );
                      }
                    },
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
