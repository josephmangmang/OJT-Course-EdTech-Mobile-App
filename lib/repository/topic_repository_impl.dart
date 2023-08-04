import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/exception/app_exception.dart';
import 'package:edtechapp/model/question.dart';
import 'package:edtechapp/model/topic.dart';
import 'package:edtechapp/model/topic_progress.dart';
import 'package:edtechapp/repository/question_repository.dart';
import 'package:edtechapp/repository/topic_repository.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/ui/common/app_exception_constants.dart';
import 'package:edtechapp/ui/common/firebase_constants.dart';

class TopicRepositoryImp implements TopicRepository {
  final db = FirebaseFirestore.instance;
  final _questionRepository = locator<QuestionRepository>();
  final _authenticationServ = locator<AuthenticationService>();

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

  @override
  Future<Either<AppException, None>> createTopicProgress(
      String courseId) async {
    final user = await _authenticationServ.getCurrentUser();
    user.fold((l) {
      return Left(AppException(l.message));
    }, (user) async {
      try {
        final topics = await getCourseTopics(courseId);
        for (var topic in topics) {
          List<Question> questions =
              await _questionRepository.getTopicQuestions(courseId, topic.id);
          await db
              .collection(FirebaseConstants.userCollection)
              .doc(user.uid)
              .collection(FirebaseConstants.progressCollection)
              .doc(courseId)
              .collection(FirebaseConstants.topicsCollection)
              .doc(topic.id)
              .set(TopicProgress(
                      id: topic.id,
                      totalProgress: questions.length,
                      currentProgress: 0)
                  .toJson());
        }
        return const Right(None());
      } catch (e) {
        return Left(AppException(e.toString()));
      }
    });
    return const Right(None());
  }

  @override
  Stream<List<TopicProgress>> getCourseTopicsProgress(
      String userId, String courseId) {
    final result = db
        .collection(FirebaseConstants.userCollection)
        .doc(userId)
        .collection(FirebaseConstants.progressCollection)
        .doc(courseId)
        .collection(FirebaseConstants.topicsCollection)
        .snapshots();
    return result.map((snap) =>
        snap.docs.map((e) => TopicProgress.fromJson(e.data())).toList());
  }

  @override
  Future<Either<AppException, None>> setTopicProgress(
      String courseId, String topicId, int progress) async {
    final user = await _authenticationServ.getCurrentUser();
    user.fold((l) {
      return Left(AppException(l.message));
    }, (user) async {
      final topicProgress = await db
          .collection(FirebaseConstants.userCollection)
          .doc(user.uid)
          .collection(FirebaseConstants.progressCollection)
          .doc(courseId)
          .collection(FirebaseConstants.topicsCollection)
          .doc(topicId)
          .get()
          .then((value) => TopicProgress.fromJson(value.data()!));
      if (topicProgress.currentProgress < progress) {
        db
            .collection(FirebaseConstants.userCollection)
            .doc(user.uid)
            .collection(FirebaseConstants.progressCollection)
            .doc(courseId)
            .collection(FirebaseConstants.topicsCollection)
            .doc(topicId)
            .update({FirebaseConstants.currentProgress: progress});
      }
      return const Right(None());
    });
    return const Right(None());
  }
}
