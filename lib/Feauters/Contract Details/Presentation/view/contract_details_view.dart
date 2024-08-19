import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Contract%20Details/Presentation/view/widgets/contract_details_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class ContractDetailsView extends StatelessWidget {
  const ContractDetailsView({super.key});
static const routeName = 'ContractDetailsView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractDetailsViewBody(),
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