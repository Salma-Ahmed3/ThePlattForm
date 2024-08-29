import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nowproject/Screens/LogIn/components/login_view_body.dart';
import 'package:nowproject/cubit/Login/login_cubit.dart';
import 'package:nowproject/cubit/Login/login_state.dart';
import 'package:nowproject/helper/build_error_bar.dart';
import 'package:nowproject/helper/build_success_bar.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          buildSuccessBar(context, state.message);
        }
        if (state is LoginFailuer) {
          buildErrorBar(context, state.error);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginLoading ? true : false,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
