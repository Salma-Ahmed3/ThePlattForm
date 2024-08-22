import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choose%20the%20package%20Hourly%20Service/Presentation/Views/Widgets/choose_package_hourly_services_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class ChoosePackageHourlyServicesView extends StatelessWidget {
  const ChoosePackageHourlyServicesView({super.key});
static const routeName = 'ChoosePackageHourlyServicesView';
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ChoosePackageHourlyServicesViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'اختيار باقتك',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}