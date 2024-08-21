import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Add%20New%20Address/Presentation/Views/add_new_address_view.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/widgets/my_request_view_body.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/utils/app_images.dart';

class MyRequestsView extends StatelessWidget {
  const MyRequestsView({super.key});
static const routeName = 'MyRequestsView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: const MyRequestsViewBody(),
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
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddNewAddressView()),
                );
              },
              child: SvgPicture.asset(Assets.imagesAddIcon)
            )
          ],
        ),
      ),
    );
  }
}