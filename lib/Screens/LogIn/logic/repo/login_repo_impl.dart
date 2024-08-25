import 'package:either_dart/src/either.dart';
import 'package:nowproject/Models/authentication/login.dart';
import 'package:nowproject/Screens/LogIn/logic/repo/login_repo.dart';
import 'package:nowproject/components/error/failure.dart';

class HomeRepoImpl implements AuthRepo {
  @override
  Future<Either<Failure, LoginModel>> createUserWithEmailAndPassword(String email, String password)async {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}