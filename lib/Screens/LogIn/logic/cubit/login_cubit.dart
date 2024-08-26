import 'package:nowproject/Screens/LogIn/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Screens/LogIn/logic/repo/login_repo.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());

  final LoginRepo loginRepo;

  Future<void> login(
   { required  String email, required password}) async {
    emit(
      LoginLoading(),
    );
    final result =
        await loginRepo.login(email: email, password: password);
    result.fold(
      (failure) => emit(LoginFailuer(message: failure.errMessage)),
      (LoginModel) => emit(
        LoginSuccess(message: 'تم التسجيل بنجاح',),
      ),
    );
  }
}