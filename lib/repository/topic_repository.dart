import '../model/topic.dart';

abstract class TopicRepository {
  Future<List<Topic>> getCourseTopics(String courseId);
}
