import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Add%20New%20Address/Presentation/Views/Widgets/add_new_address_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class AddNewAddressView extends StatelessWidget {
  const AddNewAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(textDirection: TextDirection.rtl, 
    child: Scaffold(
       
        appBar: buildAppBar(
          context,
          titleAppBar: 'اضافة عنوان جديد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
        body: const AddNewAddressViewBody(),
        bottomNavigationBar: const CustomNavBar(),
      ),
    );
  }
}

