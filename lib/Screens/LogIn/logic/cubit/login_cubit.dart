import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:nowproject/Screens/LogIn/logic/cubit/login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());

    try {
      final response = await Dio().post(
        'https://mueen-apitest.azurewebsites.net/ar/api/Account/Login',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        emit(LoginSuccess(
          message: 'تم التسجيل بنجاح',
        ));
      } else {
        emit(LoginFailuer(message: 'خطأ في البريد الالكتروني او كلمة المرور'));
      }
    } catch (e) {
      emit(LoginFailuer(message: email + password));
    }
  }
}
