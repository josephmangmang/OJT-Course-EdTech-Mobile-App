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
   List<Course> listOfCourse = [];

   
  Course? course;
  
    yourCourse() async {
    setBusy(true);

    await _repository.yourCourse().then((value) {
      if (value.isNotEmpty) {
        listOfCourse = value;
      }
    });

    print(listOfCourse.toString());
    print(listOfCourse.length);
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


}
