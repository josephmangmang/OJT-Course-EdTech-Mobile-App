import 'package:cloud_firestore_platform_interface/src/timestamp.dart';
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
  Future<Either<AppException, User>> login(
      {required String email, required String password}) {
    return Future.delayed(const Duration(seconds: 3), () {
      return Left(AppException('Error user not found'));
    });
  }

  @override
  Future<Either<AppException, None>> signup(
      String name, String email, String password) {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  // TODO: implement isLoggedIn
  bool get isLoggedIn => false;

  @override
  Future<Either<AppException, User>> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, None>> logOutUser() {
    // TODO: implement logOutUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, None>> updatePassword(
      String currentPassword, String newPassword) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, Timestamp?>> getLastUpdatedPassword(String uid) {
    // TODO: implement getLastUpdatedPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AppException, None>> updateEmail(
      String currentEmail, String newEmail, String currentPassword) {
    // TODO: implement updateEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<None, User>> facebookSignIn() {
    // TODO: implement facebookSignIn
    throw UnimplementedError();
  }


}
