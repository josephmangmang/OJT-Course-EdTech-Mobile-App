import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/course.dart';

class CourseImplService {
  Future<List<Course>?> course([String? searchCourse]) async {
    try {
      final snap = await FirebaseFirestore.instance.collection('courses').get();
      final courses =
          snap.docs.map((doc) => Course.fromJson(doc.data())).toList();
      return courses;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
