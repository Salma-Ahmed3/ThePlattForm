import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Hourly%20service/Presentatio/Views/Widgets/hourly_services_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/menue_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

import '../../../../core/Widgets/build_app_bar.dart';

class HourlyService extends StatelessWidget {
  const HourlyService({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
           drawer: const MenueBar(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'اختر الخدمة',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
        body:const HourlyServicesViewBody() ,
        bottomNavigationBar: const CustomNavBar(),
      
      ),
    );
  }
}