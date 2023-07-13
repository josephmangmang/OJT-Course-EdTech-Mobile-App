import 'package:edtechapp/services/repository_service.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/course.dart';
import '../model/user.dart';

class RepositoryImplService extends RepositoryService {
  final auth0 = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final userName = FirebaseAuth.instance.currentUser!;

  @override
  Future<String?> forgetPassword(String email) async {
    String result;
    try {
      await auth0.sendPasswordResetEmail(email: email);
      result = "Password reset link sent! Check your email";
      return result.toString();
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  @override
  Future<List<Course>> getCourse() async {
    List<Course> listOfCourse = [];

    try {
      await FirebaseFirestore.instance
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
}
