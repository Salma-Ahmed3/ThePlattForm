import 'package:bloc/bloc.dart';
import 'package:nowproject/cubit/Login/login_state.dart';
import 'package:nowproject/services/app_services.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());

    try {
      final body = {
        'email': email,
        'password': password,
      };

      final response = await AppService.callService(
        actionType: ActionType.post,
        apiName: 'Account/Login',
        body: body,
      );

      if (response.statusCode == 200) {
        emit(LoginSuccess(
          message: 'تم التسجيل بنجاح',
        ));
      } else {
        emit(LoginFailuer(message: 'خطأ في البريد الالكتروني او كلمة المرور'));
      }
    } catch (e) {
      emit(LoginFailuer(message: 'حدث خطأ ما: ${e.toString()}'));
    }
  }
}
