import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:nowproject/Models/authentication/user_data.dart';
import 'package:nowproject/cubit/Login/login_state.dart';
import 'package:nowproject/helper/local_store.dart';
import 'package:nowproject/services/app_services.dart';
import 'package:nowproject/utility/local_storge_key.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({this.userData}) : super(LoginInitial());
  bool isUserVisitor = true;
  final User? userData;


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
        String crmUserId = response['data']['user']['crmUserId'];
        String token = response['data']['token'];
          await AppLocalStore.setString(
        LocalStoreNames.appToken,
        jsonEncode({'access_token': token}),
    );

        emit(LoginSuccess(
          message: 'تم تسجيل الدخول بنجاح!',
          crmUserId: crmUserId,
          token : token
        ));
      } else {
        emit(LoginFailuer(
          error: 'رقم الجوال او كلمة المرور خاطئة',
        ));
      }
    } else {
      emit(LoginFailuer(
        error: 'حدث خطأ ما. الرجاء المحاولة مرة أخرى.',
      ));
    }
  }
}



