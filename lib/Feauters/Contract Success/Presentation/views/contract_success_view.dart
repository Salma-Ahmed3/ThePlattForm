import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Contract%20Success/Presentation/views/Widgets/contract_success_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class ContractSuccessView extends StatelessWidget {
  const ContractSuccessView({super.key});
static const routeName = 'ContractSuccessView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractSuccessViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'نجاح التعاقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
    }
    }