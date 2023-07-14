import 'package:edtechapp/services/repository_service.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/course.dart';

class RepositoryImplService extends RepositoryService {
  final auth0 = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final userName = FirebaseAuth.instance.currentUser!;

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
 
  
  
}
