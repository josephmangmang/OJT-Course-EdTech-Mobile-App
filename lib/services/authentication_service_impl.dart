import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/model/user.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';
import 'package:edtechapp/ui/common/app_exception_constants.dart';
import 'package:edtechapp/ui/common/app_exception.dart';
import 'package:edtechapp/ui/common/firebase_constants.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

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
  Future<Either<AppException, User>> login(
      {required String email, required String password}) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user == null) {
        return Left(AppException(AppExceptionConstants.userNotFound));
      }
      final userId = credential.user!.uid;
      final snap = await db
          .collection(FirebaseConstants.userCollection)
          .doc(userId)
          .get();
      final user = User.fromJson(snap.data()!);
      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(AppException(e.message.toString()));
    }
  }

  @override
  Future<Either<AppException, None>> signup(
      String name, String email, String password) async {
    try {
      UserCredential credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        return Left(AppException(AppExceptionConstants.userNotFound));
      }
      User user = User(
        name: name,
        email: email,
        uid: credential.user!.uid,
        purchaseCourses: List.empty(),
        cartCourses: List.empty(),
      );

      db
          .collection(FirebaseConstants.userCollection)
          .doc(credential.user?.uid)
          .set(user.toJson());

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
      final updatedUserDoc = await db
          .collection(FirebaseConstants.userCollection)
          .doc(user.uid)
          .get();
      return Right(User.fromJson(updatedUserDoc.data()!));
    }
  }

  @override
  Future<Either<AppException, None>> logOutUser() async {
    try {
      await auth.signOut();
      await _sharedPrefService.deleteUser();
      return const Right(None());
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, None>> updatePassword(
      String currentPassword, String newPassword) async {
    try {
      var response = await login(
          email: auth.currentUser!.email!, password: currentPassword);
      return response.fold((l) => Left(AppException(l.message)), (r) async {
        try {
          // await Future.wait([
          await auth.currentUser!.updatePassword(newPassword);
          await db.collection(FirebaseConstants.userCollection).doc(r.uid).set(
              {"lastUpdatedPassword": DateTime.now().toTimestamp()},
              SetOptions(merge: true));
          await logOutUser();
          // ]);
          return const Right(None());
        } catch (e) {
          return Left(AppException(e.toString()));
        }
      });
    } catch (e) {
      return Left(AppException(e.toString()));
    }
  }

  @override
  Future<Either<AppException, Timestamp?>> getLastUpdatedPassword(
      String uid) async {
    try {
      return await db
          .collection(FirebaseConstants.userCollection)
          .doc(uid)
          .get()
          .then((value) => Right(value.data()!['lastUpdatedPassword']));
    } on FirebaseException catch (e) {
      return Left(AppException(e.message!));
    }
  }

  @override
  Future<Either<AppException, None>> updateEmail(
      String currentEmail, String currentPassword, String newEmail) async {
    try {
      var response =
          await login(email: currentEmail, password: currentPassword);
      return response.fold((l) => Left(AppException(l.message)), (r) async {
        try {
          // await Future.wait([
          await auth.currentUser!.updateEmail(newEmail);
          await db
              .collection(FirebaseConstants.userCollection)
              .doc(r.uid)
              .set({"email": newEmail}, SetOptions(merge: true));
          await logOutUser();
          // ]);
          return const Right(None());
        } catch (e) {
          return Left(AppException(e.toString()));
        }
      });
    } catch (e) {
      return Left(AppException(e.toString()));
    }
  }

  @override
  Future<Either<None, User>> facebookSignIn() async {
    final fb = FacebookLogin();
    try {
      // Log in
      await fb.logOut();
      final result = await fb.expressLogin();

      if (result.status == FacebookLoginStatus.success) {
        final FacebookAccessToken? accessToken = result.accessToken;
        final AuthCredential authCredential = FacebookAuthProvider.credential(accessToken!.token);
        UserCredential userCredential = await auth.signInWithCredential(authCredential);
        final user = User(
            uid: userCredential.user!.uid,
            email: await fb.getUserEmail() ?? '',
            name: userCredential.additionalUserInfo!.profile!['name'],
            profileImageUrl: await fb.getProfileImageUrl(width: 128) ?? '');
        await db.collection(FirebaseConstants.userCollection).doc(userCredential.user!.uid).set(user.toJson());
        await _sharedPrefService.saveUser(user);
        return Right(user);
      } else {
        return const Left(None());
      }
    } catch (e) {
      return const Left(None());
    }
  }
}
