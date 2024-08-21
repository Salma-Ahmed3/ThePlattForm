import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Add%20New%20Address%20Google%20Maps/Presentation/views/Widgets/add_new_address_google_maps_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class AddNewAddressGoogleMapsView extends StatelessWidget {
  const AddNewAddressGoogleMapsView({super.key});
static const String routeName = 'add_new_address_google_maps_view';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: buildAppBar(
            context,
            titleAppBar: 'اضافة عنوان جديد',
            onPressedRightIcon: () {
              Navigator.of(context).pushNamed(NotificationView.routeName);
            },
            icon: const Icon(Icons.notifications),
          ),
          body: const AddNewAddressGoogleMapsViewBody(),
          bottomNavigationBar: const CustomNavBar(),
        ),
    );
  }
}