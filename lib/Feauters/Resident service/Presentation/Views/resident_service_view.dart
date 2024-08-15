import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Add%20New%20Address/Presentation/Views/add_new_address_view.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/notification_view.dart';
import 'package:nowproject/Feauters/Resident%20service/Presentation/Views/Widgets/resident_service_view_body.dart';
import 'package:nowproject/core/Widgets/build_app_bar.dart';
import 'package:nowproject/core/utils/app_images.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';
import 'package:svg_flutter/svg.dart';

class ResidentServiceView extends StatelessWidget {
  const ResidentServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // appBar: buildAppBar(
        //   context,
        //   titleAppBar: 'اختيار العنوان',
        //   rightIcon: const Icon(Icons.arrow_back),
        //   onPressedRightIcon: () {
        //     Navigator.pop(context);
        //   },
        //   leftIcon: const Icon(Icons.notifications),
        //   onPressedLeftIcon: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //           builder: (context) => const NotificationView()),
        //     );
        //   },
        // ),
        body: const ResidentServiceViewBody(),
        bottomNavigationBar: const CustomNavBar(),
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
