import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../model/course.dart';

class CourseImplService {
  Future<List<Course>?> course() async {
    try {
      
      final snap = await FirebaseFirestore.instance.collection('courses').get();
      final courses = snap.docs
          .map((doc) => Course.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      return courses;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
