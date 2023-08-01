import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/model/user.dart';

abstract interface class AuthenticationService {
  bool get isLoggedIn;

  Future<Either<AppException, None>> signup(
      String name, String email, String password);

  Future<Either<AppException, None>> updatePassword(
      String currentPassword, String newPassword);

  Future<Either<AppException, None>> updateEmail(
      String currentEmail, String currentPassword, String newEmail);

  Future<Either<AppException, User>> login(
      {required String email, required String password});

  Future<Either<AppException, None>> forgetPassword(String email);

  Future<Either<AppException, User>> getCurrentUser();

  Future<Either<AppException, None>> logOutUser();

  Future<Either<AppException, Timestamp?>> getLastUpdatedPassword(String uid);
}
