import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/ui/common/firebase_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../app/app.locator.dart';
import 'image_service.dart';

class ImageImplService implements ImageService {
  final storageRef = FirebaseStorage.instance.ref();
  final db = FirebaseFirestore.instance;
  final _authenticationService = locator<AuthenticationService>();

  @override
  Future<Either<AppException, None>> uploadProfile(File image) async {
    final path = 'images/profile/${FirebaseAuth.instance.currentUser!.uid}';
    final user = await _authenticationService.getCurrentUser();

    return user.fold((error) {
      return Left(error);
    }, (user) async {
      try {
        final imageProfile = await storageRef.child(path).putFile(image);
        final imageUrl = await imageProfile.ref.getDownloadURL();

        await db
            .collection(FirebaseConstants.userCollection)
            .doc(user.uid)
            .set({
          'profileImageUrl': imageUrl.toString(),
        }, SetOptions(merge: true));
        return const Right(None());
      } on FirebaseException catch (error) {
        return Left(AppException(error.message.toString()));
      }
    });
  }

  @override
  Stream<String> profileImage(String userId) {
    final result =
        db.collection(FirebaseConstants.userCollection).doc(userId).snapshots();

    return result.map((snap) {
      if (snap.exists) {
        if(snap.data()?['profileImageUrl'] == null) {
          return '';
        }
        else {
          return snap.data()?['profileImageUrl'];
        }

      } else {
        return '';
      }
    });
  }
}
