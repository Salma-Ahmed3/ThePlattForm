import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Contract%20attachments/Presentation/views/widgets/contract_attachments_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';

import '../../../../core/utils/custom_nav_bar.dart';

class ContractAttachmentsView extends StatelessWidget {
  const ContractAttachmentsView({super.key});
static const routeName = 'ContractAttachmentsView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const ContractAttachmentsViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'مرفقات التعاقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}