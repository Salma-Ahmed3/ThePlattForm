import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Screens/Contract%20Data/components/contract_data_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/cubit/Fixed_Package/fixed_package_cubit.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';
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
        body:BlocProvider(
              create: (context) => FixedPackageCubit(
                  firstStepCubit: context.read<FirstStepCubit>())
                ..getFixedPackage(
                  "67f56d27-256c-47d0-84f2-a0755d7a5636",
                ),
          child: ContractDataViewBody(
            promotionCode: promotionCode,
            promotionCodeDescription: promotionCodeDescription,
            selectedDate: selectedDate, onChanged: (bool value) {  },
          ),
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
