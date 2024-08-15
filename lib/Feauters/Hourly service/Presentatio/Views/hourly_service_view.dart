import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/Feauters/Hourly%20service/Presentatio/Views/Widgets/hourly_services_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

import '../../../../core/Widgets/build_app_bar.dart';

class HourlyService extends StatelessWidget {
  const HourlyService({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        //   appBar: buildAppBar(
        //   context, 
        //   titleAppBar: 'اختر الخدمة', 
        //   rightIcon: const Icon(Icons.menu), 
        //   onPressedRightIcon: () { 
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const TestPage()),
        //     );
        //    }, 
        //   leftIcon: const Icon(Icons.notifications), 
        //   onPressedLeftIcon: () { 
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const NotificationView()),
        //     );
        //    }, 
         
        // ),
        body:HourlyServicesViewBody() ,
        bottomNavigationBar: CustomNavBar(),
      
      ),
    );
  }
}