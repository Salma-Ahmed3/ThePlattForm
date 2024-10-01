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

class ChoosePackageHourlyServicesViewBody extends StatefulWidget {
  const ChoosePackageHourlyServicesViewBody({super.key});

  @override
  State<ChoosePackageHourlyServicesViewBody> createState() => _ChoosePackageHourlyServicesViewBodyState();
}

class _ChoosePackageHourlyServicesViewBodyState extends State<ChoosePackageHourlyServicesViewBody> {
    String? selectedNationality;
    String? selectedPeriod;

  void selectNationality(String nationality , String period) {
    setState(() {
      selectedNationality = nationality;
       selectedPeriod = period;
    });
  }
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
                                    isSelected: selectedNationality ==
                                        state.nationalities[index].value!,
                                    onSelect: () => selectNationality(
                                        state.nationalities[index].value!,
                                        state.nationalities[index].image!,
                                        ),
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
                                  isSelected: selectedPeriod == state.periodmodel[index].value!,
                                  onSelect: () => selectedPeriod??(state.periodmodel[index].value!),
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
                                    isSelected:selectedPeriod == state.timeHour[index].value!,
                                  onSelect: () => selectedPeriod??(state.timeHour[index].value!),
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
                                         isSelected:selectedPeriod == state.visitTimeModels[index].data!,
                                  onSelect: () => selectedPeriod??(state.visitTimeModels[index].data!),
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
                      if (state is FixedPackageLoading) {
                        // return Center(
                        //   child: SizedBox(
                        //     width: 80.w,
                        //     height: 100.h,
                        //     child: Image.asset(Assets.imagesclockloader),
                        //   ),
                        // );
                      } else if (state is FixedPackageListUpdate &&
                          state.fixedPackag.data?.selectedPackages != null) {
                        if (state.fixedPackag.data!.selectedPackages!.isEmpty) {
                          return const Center(
                              child: Text('لا توجد باقات متاحه'));
                        } else {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Column(
                                  children: List.generate(
                                    state.fixedPackag.data!.selectedPackages!
                                        .length,
                                    (index) {
                                      return CustomDetailesInChoosePackegeHourlyServices(
                                        titleText: state
                                                .fixedPackag
                                                .data!
                                                .selectedPackages![index]
                                                .displayName ??
                                            '',
                                        packagePrice: state
                                            .fixedPackag
                                            .data!
                                            .selectedPackages![index]
                                            .packagePrice
                                            .toString(),
                                        packagePriceWithoutDiscount: state
                                            .fixedPackag
                                            .data!
                                            .selectedPackages![index]
                                            .totalPriceWithVatBeforePromotion
                                            .toString(),
                                        employeeNumberName: state
                                                .fixedPackag
                                                .data!
                                                .selectedPackages![index]
                                                .employeeNumberName ??
                                            '',
                                        hoursNumber: state
                                            .fixedPackag
                                            .data!
                                            .selectedPackages![index]
                                            .hoursNumber
                                            .toString(),
                                        weeklyVisitName: state
                                                .fixedPackag
                                                .data!
                                                .selectedPackages![index]
                                                .weeklyVisitName ??
                                            '',
                                        packagePriceAfterPackageDiscount: state
                                            .fixedPackag
                                            .data!
                                            .selectedPackages![index]
                                            .packagePriceAfterPackageDiscount
                                            .toString(),
                                        promotionCodeDescription: state
                                                .fixedPackag
                                                .data!
                                                .selectedPackages![index]
                                                .promotionCodeDescription ??
                                            '',
                                        totalPriceWithVatBeforePromotion: state
                                            .fixedPackag
                                            .data!
                                            .selectedPackages![index]
                                            .totalPriceWithVatBeforePromotion
                                            .toString(),
                                        promotionCode: state
                                                .fixedPackag
                                                .data!
                                                .selectedPackages![index]
                                                .promotionCode ??
                                            '',
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          );
                        }
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
