import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Screens/Contract%20Success/components/contract_success_view_body.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/components/custom_app_bar/build_app_bar.dart';
import 'package:nowproject/cubit/contract_success/contract_success_cubit.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';
import 'package:nowproject/utility/custom_nav_bar.dart';

class ContractSuccessView extends StatelessWidget {
  const ContractSuccessView({super.key});
  static const routeName = 'ContractSuccessView';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const CustomNavBar(),
        body: BlocProvider(
          create: (context) => ContractSuccessCubit(
          firstStepCubit: context.read<FirstStepCubit>()
          ..fetchContractSuccess(
            id: '2501a6cd-09a4-445f-b32e-bbef2cb27149',
            type: '1'
            ,)
        ),
          child: const ContractSuccessViewBody(id: '2501a6cd-09a4-445f-b32e-bbef2cb27149', type: '1',),
        ),
        appBar: buildAppBar(
          context,
          titleAppBar: 'نجاح التعاقد',
          onPressedRightIcon: () {
            Navigator.of(context).pushNamed(NotificationView.routeName);
          },
          icon: const Icon(Icons.notifications),
        ),
      ),
    );
  }
}
