import 'package:edtechapp/model/question.dart';

abstract class QuestionRepository {
  Future<List<Question>> getTopicQuestions(String courseId, String topicId);
}