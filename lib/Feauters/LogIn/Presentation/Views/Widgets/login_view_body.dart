import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/home_view.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/Widgets/custom_button.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/Widgets/custom_text_form_failed.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/Widgets/forget_password.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/Widgets/social_login_button.dart';
import 'package:nowproject/Feauters/SignUp/Presentation/Views/signup_view.dart';
import 'package:nowproject/core/Widgets/custom_text_account.dart';
import 'package:nowproject/core/Widgets/password_failed.dart';
import '../../../../../core/utils/app_images.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late String email, userName, password;
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
          Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
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
             PasswordFailed(
                onSaved: (value) {
                  password = value!;
                },
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
             const SizedBox(
              height: 41,
            ),
            // const OrDivider(),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل بواسطة جوجل',
              images: Assets.imagesGoogleIcons,


            ),
            const SizedBox(
              height: 18,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل بواسطة أبل',
            images: Assets.imagesAppleIcons,

            ),
            const SizedBox(
              height: 18,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل بواسطة فيسبوك',
             images: Assets.imagesFacebookIcons,


            ),
          ],
        ),
      ),
    );
  }
}
