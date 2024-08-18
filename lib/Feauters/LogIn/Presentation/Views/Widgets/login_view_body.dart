import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
             SizedBox(
              height: 24.h,
            ),
            const CustomTextFormFaild(
              hitText: '   البريد الالكتروني',
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
             SizedBox(
              height: 28.h,
            ),
             PasswordFailed(
                onSaved: (value) {
                  password = value!;
                },
              ),
             SizedBox(
              height: 25.h,
            ),
            const ForgetPassword(),
             SizedBox(
              height: 33.h,
            ),
            CustomButtonLogin(
              onPressed: () { 
                Navigator.of(context).pushNamed(HomeView.routeName);
              },
              text: 'تسجيل دخول',
            ),
             SizedBox(
              height: 33.h,
            ),
            CustomTextAccount(
              titleHaveAccountOrNot: 'لا تمتلك حساب ؟',
              titleNewAccount: ' قم بإنشاء حساب  ',
              onTap: () {
                Navigator.of(context).pushNamed(SignupView.routeName);
              },
            ),
              SizedBox(
              height: 41.h,
            ),
            // const OrDivider(),
             SizedBox(
              height: 16.h,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل بواسطة جوجل',
              images: Assets.imagesGoogleIcons,


            ),
             SizedBox(
              height: 18.h,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل بواسطة أبل',
            images: Assets.imagesAppleIcons,

            ),
             SizedBox(
              height: 18.h,
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
