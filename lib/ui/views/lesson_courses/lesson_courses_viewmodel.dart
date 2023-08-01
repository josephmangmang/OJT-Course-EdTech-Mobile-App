import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/repository/topic_repository.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../model/course.dart';
import '../../../model/topic.dart';

class LessonCoursesViewModel extends BaseViewModel {
  final _topicRepServices = locator<TopicRepository>();
  final _navigationRepServices = locator<NavigationService>();
  final Course course;
  List<Topic> topics = [];

  LessonCoursesViewModel(this.course);

  Future<void> init() async {
    setBusy(true);
    topics = await _topicRepServices.getCourseTopics(course.id);
    setBusy(false);
  }

  void topicCardClick(Topic topic, String lessonCount) {
    _navigationRepServices.navigateToCourseLessonView(
        topic: topic, lessonCount: lessonCount, course: course);
  }
}
