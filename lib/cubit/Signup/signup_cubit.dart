import 'package:bloc/bloc.dart';
import 'package:nowproject/cubit/Signup/signup_state.dart';
import 'package:nowproject/services/app_services.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> signUp({
    required String userName,
    required String email,
    required String password,
  }) async {
    emit(SignUpLoading());

    try {
      final body = {
        "UserName": userName,
        "Email": email,
        "Password": password,
      };

      final response = await AppService.callService(
        actionType: ActionType.post,
        apiName: 'Account/Register',
        body: body,
      );

      if (response.statusCode == 200) {
        emit(SignUpSuccess());
      } else {
        emit(const SignUpFailure('تم إنشاء الحساب بنجاح'));
      }
    } catch (error) {
      emit(const SignUpFailure('حدث خطأ ما حاول مرة اخرى'));
    }
  }
}
