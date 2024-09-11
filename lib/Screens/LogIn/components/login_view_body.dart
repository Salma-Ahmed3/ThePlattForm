import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Screens/Home/home_view.dart';
import 'package:nowproject/Screens/LogIn/components/custom_button.dart';
import 'package:nowproject/Screens/LogIn/components/custom_text_form_failed.dart';
import 'package:nowproject/Screens/LogIn/components/forget_password.dart';
import 'package:nowproject/Screens/SignUp/signup_view.dart';
import 'package:nowproject/components/custom_text_account/custom_text_account.dart';
import 'package:nowproject/components/custom_password_failed/password_failed.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/cubit/Login/login_cubit.dart';
import 'package:nowproject/cubit/Login/login_state.dart';
import 'package:nowproject/utility/app_text_style.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 146.h),
                Text(
                  'LOGO',
                  style: TextStyles.bold40,
                ),
                SizedBox(height: 105.h),
                Text(
                  'تسجيل الدخول',
                  style: TextStyles.regular20,
                ),
                SizedBox(height: 11.h),
                Text('يرجى إدخال رقم جوالك المسجل لدينا و كلمة المرور',
                    style: TextStyles.regular12),
                SizedBox(height: 63.h),
                CustomTextFormFaild(
                  hitText: '    رقم الجوال',
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) => email = value!,
                ),
                SizedBox(height: 28.h),
                PasswordFailed(
                  onSaved: (value) => password = value!,
                  hintText: '  كلمة المرور',
                ),
                SizedBox(height: 25.h),
                const ForgetPassword(),
                SizedBox(height: 33.h),
                BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccess) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'تم تسجيل الدخول بنجاح',
                                style: TextStyles.regular16,
                              ),
                            ),
                            backgroundColor: Colors.blue),
                      );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()),
                      );
                    }
                    if (state is LoginFailuer) {
                      log("Error: ${state.error}");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Align(
                            alignment: Alignment.center,
                            child: Text(
                              state.error,
                              style: TextStyles.regular16,
                            ),
                          ),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is LoginLoading) {
                      return const CircularProgressIndicator();
                    }
                    return CustomButtonLogin(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          context.read<LoginCubit>().login(email, password);
                        }
                      },
                      text: 'تسجيل دخول',
                    );
                  },
                ),
                SizedBox(height: 33.h),
                CustomTextAccount(
                  titleHaveAccountOrNot: 'لا تمتلك حساب ؟',
                  titleNewAccount: ' قم بإنشاء حساب  ',
                  onTap: () {
                    Navigator.of(context).pushNamed(SignupView.routeName);
                  },
                ),
                SizedBox(height: 41.h),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
