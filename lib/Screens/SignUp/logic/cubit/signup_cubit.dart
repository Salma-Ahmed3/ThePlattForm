import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:nowproject/Screens/SignUp/logic/cubit/signup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> signUp({required String userName, required String email, required String password}) async {
    emit(SignUpLoading());

    try {
      final response = await Dio().post(
        'https://mueen-apitest.azurewebsites.net/ar/api/Account/Register',
        data: {
          "UserName": userName,
          "Email": email,
          "Password": password,
        },
      );

      if (response.statusCode == 200) {
        emit(SignUpSuccess());
      } else {
        emit(SignUpFailure('Registration failed: ${response.data['message']}'));
      }
    } catch (error) {
      emit(SignUpFailure('Registration failed: $error'));
    }
  }
}
