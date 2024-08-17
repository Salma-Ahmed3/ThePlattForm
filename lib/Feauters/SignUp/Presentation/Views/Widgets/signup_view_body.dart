import 'package:flutter/material.dart';
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
              const SizedBox(
                height: 24,
              ),
              CustomTextFormFaild(
                onSaved: (value) {
                  userName = value!;
                },
                hitText: 'الاسم كامل',
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormFaild(
                onSaved: (value) {
                  email = value!;
                },
                hitText: 'البريد الإلكتروني',
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              PasswordFailed(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 18,
              ),
              SignUpTermsAndCondition(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              const SizedBox(
                height: 25,
              ),
              // CustomButton(
              //   onPressed: () {
              //     if (formKey.currentState!.validate()) {
              //       formKey.currentState!.save();
              //       if (isTermsAccepted) {
              //         context
              //             .read<SignupCubit>()
              //             .createUserWithEmailAndPassword(
              //               email,
              //               password,
              //               userName,
              //             );
              //       } else {
              //         buildErrorBar(
              //             context, 'يجب عليك الموافقة على الشروط والإحكام');
              //       }
              //     } else {
              //       setState(() {
              //         autovalidateMode = AutovalidateMode.always;
              //       });
              //     }
              //   },
              //   text: 'إنشاء حساب جديد',
              // ),
            CustomButtonLogin(
              onPressed: () { 
                Navigator.of(context).pushNamed(HomeView.routeName);
              },
              text: 'إنشاء حساب جديد',
            ),   const SizedBox(
                height: 26,
              ),
              CustomTextAccount(
                titleHaveAccountOrNot: 'تمتلك حساب بالفعل ؟',
                titleNewAccount: '  تسجيل دخول  ',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
