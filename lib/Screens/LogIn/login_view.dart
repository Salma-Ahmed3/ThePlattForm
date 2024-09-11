import 'package:flutter/material.dart';
import 'package:nowproject/Screens/LogIn/components/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
