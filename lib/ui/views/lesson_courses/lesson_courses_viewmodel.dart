import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/repository/topic_repository.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/ui/common/firebase_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/course.dart';
import '../../../model/topic.dart';
import '../../../model/topic_progress.dart';
import '../../../model/user.dart';

class LessonCoursesViewModel extends BaseViewModel {
  final _topicRepServices = locator<TopicRepository>();
  final _navigationRepServices = locator<NavigationService>();
  final _authenticationService = locator<AuthenticationService>();
  final Course course;
  List<Topic> topics = [];
  List<TopicProgress> topicProgress = [];

  LessonCoursesViewModel(this.course);

  Future<void> init() async {
    setBusy(true);
    topics = await _topicRepServices.getCourseTopics(course.id);
    final user = await _authenticationService.getCurrentUser();
    user.foldRight([], (user, List<dynamic>? previous) {
      _topicRepServices.getCourseTopicsProgress(user.uid, course.id).listen((list) {
        topicProgress = list;
        rebuildUi();
      });
    });
    setBusy(false);
  }

  void topicCardClick(Topic topic, String lessonCount) {
    _navigationRepServices.navigateToCourseLessonView(
        topic: topic, lessonCount: lessonCount, course: course);
  }
}
