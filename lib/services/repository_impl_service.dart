import 'package:dartz/dartz.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/services/repository_service.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../app/app.locator.dart';
import '../model/course.dart';
import '../model/user.dart';
import '../ui/common/app_constants.dart';

class RepositoryImplService extends RepositoryService {
  final auth0 = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final userName = FirebaseAuth.instance.currentUser!;
  final _shared = locator<SharedService>();

  User? user;

  @override
  Future<List<Course>> getCourse() async {
    List<Course> listOfCourse = [];

    try {
         await db
          .collection('courses')
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
Future<List<Course>> searchCourse(String searchCourse) async {
  List<Course> listOfCourse = [];

  if (searchCourse.isEmpty) {
    try {
    await db
        .collection('courses')
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
          .collection('courses').where('category', isEqualTo: categoryCourse)
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
          .collection('courses').where('id', isEqualTo: itemId)
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
  Future<Either<AppException, None>> buyCourse(String courseId) async {
    try {
      user = await _shared.getUser(AppConstants.userPrefKey); 

      await db.collection('users').doc(user!.uid).update({'course': FieldValue.arrayUnion([courseId]),
      }).then((value) {
        return const Right(None());
      });
    }  on FirebaseAuthException catch (e) {
      return Left(AppException(e.message.toString()));
    }
    throw UnimplementedError();
  }
}
