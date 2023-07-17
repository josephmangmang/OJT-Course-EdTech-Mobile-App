import 'package:dartz/dartz.dart';
import 'package:edtechapp/services/repository_service.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/model/user.dart' as userData;
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../app/app.locator.dart';
import '../exception/app_exception.dart';
import '../model/course.dart';
import '../ui/common/app_constants.dart';
import '../ui/common/firebase_constants.dart';
import 'authentication_service.dart';

class RepositoryImplService extends RepositoryService {
  final auth0 = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final userName = FirebaseAuth.instance.currentUser!;
  final _shared = locator<SharedService>();
  final _sharedPrefService = locator<SharedPrefServiceService>();
  final _authenticationService = locator<AuthenticationService>();

  @override
  Future<List<Course>> getCourse() async {
    List<Course> listOfCourse = [];

    try {
      await db.collection('courses').get().then((value) {
        if (value.docs.isNotEmpty) {
          var snapshots = value.docs;

          listOfCourse =
              snapshots.map((e) => Course.fromJson(e.data())).toList();
        }
      });
    } catch (e) {
      print(e.toString());
    }
    return listOfCourse;
  }

  @override
  Future<List<Course>> searchCourse(String searchCourse) async {
    List<Course> listOfCourse = [];

    if (searchCourse.isEmpty) {
      try {
        await db.collection('courses').get().then((value) {
          if (value.docs.isNotEmpty) {
            var snapshots = value.docs;
            listOfCourse =
                snapshots.map((e) => Course.fromJson(e.data())).toList();
          }
        });
      } catch (e) {
        print(e.toString());
      }
      return listOfCourse;
    } else {
      try {
        await db
            .collection('courses')
            .where('keywords', arrayContains: searchCourse.toLowerCase())
            .get()
            .then((value) {
          if (value.docs.isNotEmpty) {
            var snapshots = value.docs;
            listOfCourse =
                snapshots.map((e) => Course.fromJson(e.data())).toList();
          }
        });
      } catch (e) {
        print(e.toString());
      }
      return listOfCourse;
    }
  }

  @override
  Future<List<Course>> categoryCourse(String categoryCourse) async {
    List<Course> listOfCourse = [];

    try {
      await db
          .collection('courses')
          .where('category', isEqualTo: categoryCourse)
          .get()
          .then((value) {
        if (value.docs.isNotEmpty) {
          var snapshots = value.docs;
          listOfCourse =
              snapshots.map((e) => Course.fromJson(e.data())).toList();
        }
      });
    } catch (e) {
      print(e.toString());
    }
    return listOfCourse;
  }

  @override
  Future<List<Course>> addCourse() async {
    List<Course> listOfCourse = [];

    try {
      await db
          .collection('courses')
          .where('id', isEqualTo: itemId)
          .get()
          .then((value) {
        if (value.docs.isNotEmpty) {
          var snapshots = value.docs;
          listOfCourse =
              snapshots.map((e) => Course.fromJson(e.data())).toList();
        }
      });
    } catch (e) {
      print(e.toString());
    }
    return listOfCourse;
  }

  @override
  Future<Either<AppException, None>> buyCourse(String? courseId) async {
    if (courseId == null) {
      return Left(InvalidInputException("Course ID is null"));
    }

    final user = await _authenticationService.getCurrentUser();

    return user.fold((error) {
      return Left(error);
    }, (user) async {
      try {
        await db
            .collection(FirebaseConstants.courseCollection)
            .doc(user.uid)
            .update({
          'purchase_course': FieldValue.arrayUnion([courseId]),
        });
      } on FirebaseAuthException catch (e) {
        return Left(AppException(e.message.toString()));
      }
      return const Right(None());
    });
  }

  @override
  Future<List<Course>> getUserCourses() async {
    final user = await _authenticationService.getCurrentUser();

    return user.foldRight([], (user, previous) async {
      final purchaseCourses = user.purchaseCourses;
      if (purchaseCourses.isEmpty) return [];

      final results = await db
          .collection(FirebaseConstants.courseCollection)
          .where(
            FirebaseConstants.id,
            whereIn: purchaseCourses.toList(),
          )
          .get();

      return results.docs.map((doc) => Course.fromJson(doc.data())).toList();
    });
  }
}
