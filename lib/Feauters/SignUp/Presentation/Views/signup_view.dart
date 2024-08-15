import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/SignUp/Presentation/Views/Widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const routeName = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupViewBody(),
    );
  }
}