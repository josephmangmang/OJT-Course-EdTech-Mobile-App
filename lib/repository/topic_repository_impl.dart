import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtechapp/model/topic.dart';
import 'package:edtechapp/repository/topic_repository.dart';
import 'package:edtechapp/ui/common/firebase_constants.dart';

class TopicRepositoryImp implements TopicRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<Topic>> getCourseTopics(String courseId) async {
    final results = await db
        .collection(FirebaseConstants.courseCollection)
        .doc(courseId)
        .collection(FirebaseConstants.topicsCollection)
        .get()
        .then((value) {
      return value.docs.map((e) => Topic.fromJson(e.data())).toList();
    });
    return results;
  }
}
