import 'package:bloc/bloc.dart';
import 'package:nowproject/cubit/Signup/signup_state.dart';
import 'package:nowproject/services/services.dart';

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
        "userName": userName,
        "email": email,
        "password": password,
      };

      final response = await AppService.callService(
        actionType: ActionType.post,
        apiName: 'Account/Register',
        body: body,
      );

      if (response != null) {
        // Assuming response is a JSON object with a status field
        final responseData = response as Map<String, dynamic>;
        
        if (responseData['status'] == 200) {
          emit(SignUpSuccess());
        } else {
          emit(SignUpFailure('Sign-up failed: ${responseData['message'] ?? 'Unknown error'}'));
        }
      } else {
        emit(SignUpFailure('No response received'));
      }
    } catch (e) {
      emit(SignUpFailure('An error occurred: $e'));
    }
  }
}
