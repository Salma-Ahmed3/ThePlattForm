import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Business%20Sector%20Service%20Request/business_sector_service_request_view.dart';
import 'package:nowproject/Screens/My%20Request%20Business/components/my_request_buiness_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';
import 'package:svg_flutter/svg_flutter.dart';

class MyRequestBuinessView extends StatelessWidget {
  const MyRequestBuinessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const MyRequestBuinessViewBody(),
        appBar: buildAppBar(
          context,
          titleAppBar: 'طلباتي',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const BusinessSectorServiceRequestView()),
                  );
                },
                child: SvgPicture.asset(Assets.imagesAddIcon))
          ],
        ),
      ),
    );
  }
}
