import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/cubit/Signup/signup_state.dart';
import 'package:nowproject/services/services.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> signUp({
    required String userName,
    required String name,
    required String firstName,
    required String middleName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,

  }) async {
    emit(SignUpLoading());

    final body = {
  "userName": userName,
  "name": name,
  "firstName": firstName,
  "middleName": middleName,
  "lastName": lastName,
  "email": email,
  "password": password,
  "confirmPassword": confirmPassword,
  
    };

    final response = await AppService.callService(
      actionType: ActionType.post,
      apiName: 'Account/Register', 
      body: body,
    );

    if (response != null && response['status'] == 200) {
      emit(SignUpSuccess(message: 'تم انشاء الحساب بنجاح'));
    } else if (response != null && response['message'] != null) {
      emit(SignUpFailure(error: response['message']));
    } else {
      emit(SignUpFailure(error: 'خطأ غير معروف'));
    }
  }
}
