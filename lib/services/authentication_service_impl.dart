import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/model/user.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';
import 'package:edtechapp/ui/common/app_exemption_constants.dart';
import 'package:edtechapp/ui/common/firebase_constants.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

import '../app/app.locator.dart';

class AuthenticationServiceImpl implements AuthenticationService {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final _sharedPrefService = locator<SharedPrefServiceService>();

  @override
  Future<Either<AppException, None>> forgetPassword(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);

      return const Right(None());
    } on FirebaseAuthException catch (e) {
      return Left(AppException(e.message.toString()));
    }
  }

  @override
  Future<Either<AppException, User>> login(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user == null) {
        return Left(AppException(AppExceptionConstants.userNotFound));
      }
      final userId = credential.user!.uid;
      final snap = await db.collection(FirebaseConstants.userCollection).doc(userId).get();
      final user = User.fromJson(snap.data()!);
      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(AppException(e.message.toString()));
    }
  }

  @override
  Future<Either<AppException, None>> signup(String name, String email, String password) async {
    try {
      UserCredential credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        return Left(AppException(AppExceptionConstants.userNotFound));
      }
      User user = User(name: name, email: email, uid: credential.user!.uid, purchaseCourses: List.empty());

      db.collection(FirebaseConstants.userCollection).doc(credential.user?.uid).set(user.toJson());

      return const Right(None());
    } on FirebaseAuthException catch (e) {
      String errorMessage = e.message.toString();
      if (e.code == 'weak-password') {
        errorMessage = AppExceptionConstants.passwordIsWeak;
      } else if (e.code == 'email-already-in-use') {
        errorMessage = AppExceptionConstants.accountAlreadyExists;
      }
      return Left(AppException(errorMessage));
    } catch (error) {
      // Signup failed, handle error
      return Left(AppException(error.toString()));
    }
  }

  @override
  bool get isLoggedIn => auth.currentUser != null;

  @override
  Future<Either<AppException, User>> getCurrentUser() async {
    final user = await _sharedPrefService.getCurrentUser();
    if (user == null) {
      return Left(AppException(AppExceptionConstants.noLoggedInUser));
    } else {
      final updatedUserDoc = await db.collection(FirebaseConstants.userCollection).doc(user.uid).get();
      return Right(User.fromJson(updatedUserDoc.data()!));
    }
  }
}
