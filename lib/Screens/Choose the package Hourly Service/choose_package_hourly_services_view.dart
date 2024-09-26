import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/components/choose_package_hourly_services_view_body.dart';
import 'package:nowproject/Screens/Design%20your%20presentation/design_your_presentation_view.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/Screens/Resident%20service/components/global_data.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/cubit/Fixed_Package/fixed_package_cubit.dart';
import 'package:nowproject/cubit/Nationality/nationality_cubit.dart';
import 'package:nowproject/cubit/Period_cubit/period_cubit.dart';
import 'package:nowproject/cubit/Time_Hours_cubit/time_hours_cubit.dart';
import 'package:nowproject/cubit/Visit_Time_Cubit/visit_cubit.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class ChoosePackageHourlyServicesView extends StatelessWidget {
  const ChoosePackageHourlyServicesView({super.key});
  static const routeName = 'ChoosePackageHourlyServicesView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) =>
                NationalityCubit(firstStepCubit: context.read<FirstStepCubit>())
                  ..fetchNationalities(globalData.serviceId??''),
          ),
          BlocProvider(
            create: (context) =>
                PeriodCubit(firstStepCubit: context.read<FirstStepCubit>())
                  ..fetchPeriodTime(
                    globalData.serviceId??'',
                  ),
          ),
          BlocProvider(
            create: (context) =>
                TimeHoursCubit(firstStepCubit: context.read<FirstStepCubit>())
                  ..getTimeHours(
                    globalData.serviceId??'',
                    '1',
                  ),
          ),
          BlocProvider(
            create: (context) =>
                TimeVisitCubit(firstStepCubit: context.read<FirstStepCubit>())
                  ..fetchVisitTime(
                    "84d12dc2-9fee-ee11-b76a-000d3a2b1bdd",
                  ),
          ),
          BlocProvider(
              create: (context) => FixedPackageCubit(
                  firstStepCubit: context.read<FirstStepCubit>())
                ..getFixedPackage(
                  "67f56d27-256c-47d0-84f2-a0755d7a5636",
                )),
        ], child: const ChoosePackageHourlyServicesViewBody()),
        appBar: buildAppBar(
          context,
          titleAppBar: 'الباقات الثابته',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DesignYourPresentationView(),
                    ),
                  );
                },
                child: Container(
                  height: 46,
                  width: 168,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'صمم باقة تناسبك',
                        style:
                            TextStyles.regular14.copyWith(color: Colors.white),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
