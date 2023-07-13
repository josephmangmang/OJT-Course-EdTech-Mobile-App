import 'package:dartz/dartz.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/model/user.dart';

import 'authentication_service.dart';

class AuthenticationServiceMock implements AuthenticationService {
  @override
  Future<Either<AppException, None>> forgetPassword(String email) {
    // TODO: implement forgetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, User>> login(String email, String password) {
    return Future.delayed(const Duration(seconds: 3), () {
      return Left(AppException('Error user not found'));
    });
  }

  @override
  Future<Either<AppException, None>> signup(String name, String email, String password) {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  // TODO: implement isLoggedIn
  bool get isLoggedIn => false;
}
