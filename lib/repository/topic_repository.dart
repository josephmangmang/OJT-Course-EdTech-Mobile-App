import 'package:dartz/dartz.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/model/topic_progress.dart';

import '../model/topic.dart';

abstract class TopicRepository {
  Future<List<Topic>> getCourseTopics(String courseId);
  Future<Either<AppException, None>> createTopicProgress(String courseId);
  Stream<List<TopicProgress>> getCourseTopicsProgress(
      String userId, String courseId);
  Future<Either<AppException, None>> setTopicProgress(
      String courseId, String topicId, int progress);
}
