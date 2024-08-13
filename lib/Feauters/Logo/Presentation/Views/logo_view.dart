import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nowproject/Feauters/Logo/Presentation/Views/Widgets/logo_view_body.dart';

class LogoView extends StatelessWidget {
  const LogoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogoViewBody(),
    );
  }
}