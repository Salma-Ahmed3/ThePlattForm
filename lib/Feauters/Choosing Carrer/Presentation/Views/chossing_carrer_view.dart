import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Choosing%20Carrer/Presentation/Views/Widget/chossing_carrer_view_body.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';
import '../../../Notification/Presentation/Views/notification_view.dart';

class ChossingCarrerView extends StatelessWidget {
  const ChossingCarrerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
      appBar: buildAppBar(
          context,
          titleAppBar: 'اختيار المهنة',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
        body: const ChossingCarrerViewBody(),
        bottomNavigationBar: const CustomNavBar(),
      ),
    );
  }
}
