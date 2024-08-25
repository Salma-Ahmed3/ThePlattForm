import 'package:either_dart/either.dart';
import 'package:nowproject/Models/authentication/login.dart';
import 'package:nowproject/components/error/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginModel>> createUserWithEmailAndPassword(
      String email, String password);
}
