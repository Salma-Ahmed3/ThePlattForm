import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Data/components/contract_data_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class ContractDataView extends StatelessWidget {
  const ContractDataView({
    super.key,
    required this.promotionCode,
    required this.promotionCodeDescription,
    required this.selectedDate, // Add this parameter
  });

  static const routeName = 'ContractDataView';
  final String promotionCode;
  final String promotionCodeDescription;
  final DateTime selectedDate; // Add this property

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: ContractDataViewBody(
          promotionCode: promotionCode,
          promotionCodeDescription: promotionCodeDescription,
          selectedDate: selectedDate, // Pass the selectedDate here
        ),
        appBar: buildAppBar(
          context,
          titleAppBar: 'بيانات التعاقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}
