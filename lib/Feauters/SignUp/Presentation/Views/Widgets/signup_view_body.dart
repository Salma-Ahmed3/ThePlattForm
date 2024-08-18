import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/home_view.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/Widgets/custom_button.dart';
import 'package:nowproject/Feauters/LogIn/Presentation/Views/Widgets/custom_text_form_failed.dart';
import 'package:nowproject/Feauters/SignUp/Presentation/Views/Widgets/sign_up_terms_and_condition.dart';
import 'package:nowproject/core/Widgets/password_failed.dart';
import '../../../../../core/Widgets/custom_text_account.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, userName, password;
  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
               SizedBox(
                height: 24.h,
              ),
              CustomTextFormFaild(
                onSaved: (value) {
                  userName = value!;
                },
                hitText: 'الاسم كامل',
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
              ),
               SizedBox(
                height: 20.h,
              ),
              CustomTextFormFaild(
                onSaved: (value) {
                  email = value!;
                },
                hitText: 'البريد الإلكتروني',
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
              ),
               SizedBox(
                height: 20.h,
              ),
              PasswordFailed(
                onSaved: (value) {
                  password = value!;
                },
              ),
               SizedBox(
                height: 18.h,
              ),
              SignUpTermsAndCondition(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
               SizedBox(
                height: 25.h,
              ),
             
            CustomButtonLogin(
              onPressed: () { 
                Navigator.of(context).pushNamed(HomeView.routeName);
              },
              text: 'إنشاء حساب جديد',
            ),    SizedBox(
                height: 26.h,
              ),
              CustomTextAccount(
                titleHaveAccountOrNot: 'تمتلك حساب بالفعل ؟',
                titleNewAccount: '  تسجيل دخول  ',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
               SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
