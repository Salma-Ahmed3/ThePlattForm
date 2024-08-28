import 'package:bloc/bloc.dart';
import 'package:nowproject/cubit/Login/login_state.dart';
import 'package:nowproject/services/app_services.dart';

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
      
        if (email == '0588638638' && password == '111111') {
        emit(LoginSuccess(
          message: response.toString(),
        ));
        }
        else if(email != body && password !=body){
        emit(LoginFailuer(
        message: ' رقم الجوال او كلمة المرور خاطئة'
        ));
        
    }
  }
}
