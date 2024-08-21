import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Business%20Sector%20Service%20Request/presentation/views/Widgets/business_sector_service_request_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class BusinessSectorServiceRequestView extends StatelessWidget {
  const BusinessSectorServiceRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: buildAppBar(
            context,
            titleAppBar: 'طلب خدمة قطاع الأعمال',
            onPressedRightIcon: () {
              Navigator.of(context).pushNamed(NotificationView.routeName);
            },
            icon: const Icon(Icons.notifications),
          ),
          body: const BusinessSectorServiceRequestViewBody(),
          bottomNavigationBar: const CustomNavBar(),
        ),
    );
  }
}