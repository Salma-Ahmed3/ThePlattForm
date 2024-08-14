import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/Widgets/notification_view_body.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: buildAppBar(context, titleAppBar: 'الإشعارات',
         rightIcon: const Icon(Icons.arrow_back_sharp),
          leftIcon: const Icon(Icons.notifications), 
          onPressedRightIcon: () { 
          Navigator.pop(
            
            context,
          );
         }, onPressedLeftIcon: () {  },
            ),
        body: const NotificationViewBody(),
      bottomNavigationBar: const CustomNavBar(),

      ),
    );
  }
}