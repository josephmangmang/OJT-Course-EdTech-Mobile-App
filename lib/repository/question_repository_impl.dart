import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtechapp/model/question.dart';
import 'package:edtechapp/repository/question_repository.dart';
import 'package:edtechapp/ui/common/firebase_constants.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<Question>> getTopicQuestions(
      String courseId, String topicId) async {
    final result = db
        .collection(FirebaseConstants.courseCollection)
        .doc(courseId)
        .collection(FirebaseConstants.topicsCollection)
        .doc(topicId)
        .collection(FirebaseConstants.questionsCollection)
        .get()
        .then((value) {
      return value.docs.map((e) => Question.fromJson(e.data())).toList();
    });
    return result;
  }
}
