import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Notification/Presentation/Views/Widgets/custom_button_notifications.dart';


class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const   Padding(
        padding:  EdgeInsets.symmetric(horizontal: 32),
        child:  Column(
          children: [
            SizedBox(height: 28,),
            CustomButtonNotifications(titletext: '02/05/2023', colorSmallContainer: Color(0xffD6D6D6), subtitletext: 'احجزي لك معاونة شهرية ابتداء من 2100 ريال',),
            SizedBox(height: 16,),
            CustomButtonNotifications(titletext: '02/05/2023', colorSmallContainer: Color(0xffD6D6D6), subtitletext: 'احجزي لك معاونة شهرية ابتداء من 2100 ريال',),
            SizedBox(height: 16,),
            CustomButtonNotifications(titletext: '02/05/2023', colorSmallContainer: Color(0xffD6D6D6), subtitletext: 'احجزي لك معاونة شهرية ابتداء من 2100 ريال',),
            SizedBox(height: 16,),
            CustomButtonNotifications(titletext: '02/05/2023', colorSmallContainer: Color(0xffD6D6D6), subtitletext: 'احجزي لك معاونة شهرية ابتداء من 2100 ريال',),
            SizedBox(height: 16,),
            CustomButtonNotifications(titletext: '02/05/2023', colorSmallContainer: Color(0xffD6D6D6), subtitletext: 'احجزي لك معاونة شهرية ابتداء من 2100 ريال',),
          ],
        ),
    );
  }
}


