import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Chossing%20Maid/Presentation/views/widgets/chossing_maid_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class ChoosingMaidView extends StatelessWidget {
  const ChoosingMaidView({super.key});
  static const routeName = 'NextPage';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ChoosingMaidViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'اختيار العاملة',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}
