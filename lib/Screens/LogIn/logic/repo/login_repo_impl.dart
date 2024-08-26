// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:nowproject/Screens/LogIn/logic/repo/login_repo.dart';
// import 'package:nowproject/components/error/failure.dart';
// import 'package:nowproject/components/services/api_services.dart';

// class LoginRepoImpl implements LoginRepo {
//   final APiService aPiService;

//   LoginRepoImpl({required this.aPiService});

//   @override
//    Future<Either<Failure, dynamic>> login({required String email,required String password})async {
//    try {
//       var data = await aPiService.get(
//           endpoint: '/Account/Login');
//       return right(data.data);
//     } on Exception catch (e) {
//       if (e is DioException) {
//         return left(ServerFailure.fromDioError(e));
//       } else {
//         return left(
//           ServerFailure(
//             e.toString(),
//           ),
//         );
//       }
//     }
//   }
// }
