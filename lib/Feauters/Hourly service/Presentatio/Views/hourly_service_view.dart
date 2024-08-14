import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Hourly%20service/Presentatio/Views/Widgets/hourly_services_view_body.dart';
import 'package:nowproject/core/utils/custom_nav_bar.dart';

class HourlyService extends StatelessWidget {
  const HourlyService({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:HourlyServicesViewBody() ,
      bottomNavigationBar: const CustomNavBar(),

    );
  }
}