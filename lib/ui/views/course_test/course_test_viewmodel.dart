import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/course.dart';
import '../../../model/topic.dart';

class CourseTestViewModel extends BaseViewModel {

  final Course course;
  final Topic topic;

  CourseTestViewModel(this.course, this.topic);
  final _navigationService = locator<NavigationService>();
  void goToTestViewPage() {
    _navigationService.navigateToTestQuestionView(course: course, topic: topic);
  }
}
