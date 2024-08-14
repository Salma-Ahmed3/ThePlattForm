import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/home_view_body.dart';
import 'package:nowproject/core/Widgets/build_app_bar_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: buildAppbarHomeView(context),
        body: const HomeViewBody(),
      ),
    );
  }

  
}
