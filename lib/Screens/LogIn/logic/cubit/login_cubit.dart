
import 'package:nowproject/Screens/LogIn/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Screens/LogIn/logic/repo/login_repo.dart';


class SignupCubit extends Cubit<LoginState> {
  SignupCubit(this.authRepo) : super(LoginInitial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    emit(
      LoginLoading(),
    );
    final result =
        await authRepo.createUserWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(LoginFailuer(message: failure.errMessage)),
      (LoginModel) => emit(
        LoginSuccess(message: 'تم التسجيل بنجاح',),
      ),
    );
  }
}