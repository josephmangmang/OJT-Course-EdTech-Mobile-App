import 'package:dartz/dartz.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/model/user.dart';

abstract interface class AuthenticationService {
  bool get isLoggedIn;

  Future<Either<AppException, None>> signup(String name, String email, String password);

  Future<Either<AppException, User>> login(String email, String password);

  Future<Either<AppException, None>> forgetPassword(String email);
}
