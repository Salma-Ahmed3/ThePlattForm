import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/utils/app_text_style.dart';

AppBar buildAppbarHomeView(BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xffF8F8F8),
    centerTitle: true,
    title: const Text(
      "مرحبا عميلنا العزيز",
      style: TextStyles.semiBold18,
    ),
    leading: Padding(
      padding: const EdgeInsets.only(right: 31),
      child: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TestPage()),
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
