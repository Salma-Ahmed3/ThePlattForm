import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Contract%20Details%20Maid/Presentation/views/widgets/contract_details_maid_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class ContractDetailsMaidView extends StatelessWidget {
  const ContractDetailsMaidView({super.key});
static const routeName = 'ContractDetailsMaidView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractDetailsMaidViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'تفاصيل التعاقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}