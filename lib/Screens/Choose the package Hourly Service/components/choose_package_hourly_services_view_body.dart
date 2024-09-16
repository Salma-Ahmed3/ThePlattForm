import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/choose_button_nationalty_in_choose_package.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_button_package_duration_item.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/custom_button_periods_in_chosse_package.dart';
import 'package:nowproject/cubit/Nationality/nationality_state.dart';
import 'package:nowproject/cubit/Period_cubit/period_cubit.dart';
import 'package:nowproject/cubit/Period_cubit/period_state.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/cubit/Nationality/nationality_cubit.dart';

class ChoosePackageHourlyServicesViewBody extends StatelessWidget {
  const ChoosePackageHourlyServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NationalityCubit(
              firstStepCubit: context.read<FirstStepCubit>())
            ..fetchNationalities("c97fdb23-4687-ec11-a837-000d3abe20f8"),
        ),
        BlocProvider(
          create: (context) => PeriodCubit(firstStepCubit: context.read<FirstStepCubit>())..fetchPeriodTime(
            "c97fdb23-4687-ec11-a837-000d3abe20f8",
          ), 
        ),
      ],
      child: Stack(
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
                              // You can uncomment this if you need to show a SnackBar on failure
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(content: Text(state.error)),
                              // );
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
                                          periodtime:state.periodmodel[index].value!,
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
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: CustomButtonPackageDurationItem(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
