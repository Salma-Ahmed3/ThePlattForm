import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/home_view_body.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // drawer: MenurBar(),
        appBar: buildAppBar(
          context, 
          titleAppBar: 'مرحبا عميلنا العزيز', 
          rightIcon: const Icon(Icons.menu), 
          onPressedRightIcon: () { 
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TestPage()),
            );
           }, 
          leftIcon: const Icon(Icons.notifications), 
          onPressedLeftIcon: () { 
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotificationView()),
            );
           }, 
         
        ),
        body: const HomeViewBody(),
        bottomNavigationBar: const CustomNavBar(),
      ),
    );
  }
}

