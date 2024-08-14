import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/Widgets/notification_view_body.dart';
import 'package:nowproject/core/Widgets/build_app_bar_notification.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: buildAppbarNotification(context),
        body: const NotificationViewBody()
      ),
    );
  }
}