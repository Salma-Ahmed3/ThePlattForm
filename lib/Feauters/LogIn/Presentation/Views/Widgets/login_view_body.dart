import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/home_view.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/Widgets/custom_button.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/Widgets/custom_text_form_failed.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/Widgets/forget_password.dart';
import 'package:nowproject/Feauters/SignUp/Presentation/Views/signup_view.dart';
import 'package:nowproject/core/Widgets/custom_text_account.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
          Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
  
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormFaild(
              hitText: '   البريد الالكتروني',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 28,
            ),
            const CustomTextFormFaild(
              hitText: '    كلمة المرور ',
              textInputAction: TextInputAction.done,
              suffixIcon: Icon(
                Icons.remove_red_eye_rounded,
                color: Color.fromARGB(255, 125, 132, 133),
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 25,
            ),
            const ForgetPassword(),
            const SizedBox(
              height: 33,
            ),
            CustomButtonLogin(
              onPressed: () { 
                Navigator.of(context).pushNamed(HomeView.routeName);
              },
              text: 'تسجيل دخول',
            ),
            const SizedBox(
              height: 33,
            ),
            CustomTextAccount(
              titleHaveAccountOrNot: 'لا تمتلك حساب ؟',
              titleNewAccount: ' قم بإنشاء حساب  ',
              onTap: () {
                Navigator.of(context).pushNamed(SignupView.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}