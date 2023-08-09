import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../model/course.dart';
import '../../../services/repository_service.dart';

class YourCoursesViewModel extends BaseViewModel {
  final _repository = locator<RepositoryService>();
  final _navigationService = locator<NavigationService>();
  List<Course> courses = [];

  void init() async {
    setBusy(true);
    await loadUserCourses();
    setBusy(false);
  }

  void coursePressed(Course course) {
    _navigationService.navigateToLessonCoursesView(course: course);
  }

  int getColor(int index) {
    index++;
    return index % 2 == 0 ? 0xFFF7F2EE : 0xFFE6EDF4;
  }

  Future<void> loadUserCourses() async {
    courses = await _repository.getUserCourses();

  }
}
