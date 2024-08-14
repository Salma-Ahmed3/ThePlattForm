import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/home_view.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

AppBar buildAppbarNotification(BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xffF8F8F8),
    centerTitle: true,
    title: const Text(
      "الإشعارات",
      style: TextStyles.semiBold18,
    ),
    leading: Padding(
      padding: const EdgeInsets.only(right: 31),
      child: IconButton(
        icon: const Icon(Icons.arrow_back_sharp),
        onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const HomeView()),
            );
        },
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(left: 31),
        child: IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationView()),
            );
          },
        ),
      ),
    ],
  );
}
