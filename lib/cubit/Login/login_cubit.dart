import 'package:bloc/bloc.dart';
import 'package:nowproject/cubit/Login/login_state.dart';
import 'package:nowproject/services/services.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());

    final body = {
      'userName': email,
      'password': password,
    };

    final response = await AppService.callService(
      actionType: ActionType.post,
      apiName: 'Account/Login',
      body: body,
    );

    if (response != null) {
      if (response['status'] == 200) {
        emit(LoginSuccess(
          message: 'تم تسجيل الدخول بنجاح!',
        ));
      } else {
        emit(LoginFailuer(
          error:'رقم الجوال او كلمة المرور خاطئة',
        ));
      }
    } else {
      emit(LoginFailuer(
        error: 'حدث خطأ ما. الرجاء المحاولة مرة أخرى.',
      ));
    }
  }
}
