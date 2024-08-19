import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Contract/Presentation/View/Widgets/contract_view_body.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

import '../../../Notification/Presentation/Views/notification_view.dart';

class ContractView extends StatelessWidget {
  const ContractView({super.key});
static const routeName = 'ContractView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'تفاصيل العقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}