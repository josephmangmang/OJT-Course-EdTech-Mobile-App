import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/course.dart';
import '../../../services/repository_service.dart';
import '../../../services/shared_service.dart';

class YourCoursesViewModel extends BaseViewModel {
  final _repository = locator<RepositoryService>();
  final _shared = locator<SharedService>();
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  List<Course> courses = [];

  void init() async {
    setBusy(true);
    await loadUserCourses();
    setBusy(false);
  }

  void coursePressed(String courseId) {
    print(courseId);
    _navigationService.replaceWithCourseLessonView();
  }

  int getColor(int index) {
    index++;
    return index % 2 == 0 ? 0xFFF7F2EE : 0xFFE6EDF4;
  }

  Future<void> loadUserCourses() async {
    courses = await _repository.getUserCourses();
    print(courses.toString());
    print(courses.length);
  }

  void goBack () {
    _navigationService.back();
  }
}
