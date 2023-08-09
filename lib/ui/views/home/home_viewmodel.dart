import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/model/user.dart';
import 'package:edtechapp/ui/common/busy_object_constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../model/course.dart';
import '../../../repository/course_repository.dart';
import '../../../services/authentication_service.dart';

class HomeViewModel extends BaseViewModel {
  TextEditingController searchTextController = TextEditingController();

  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _courseRepository = locator<CourseRepository>();

  List<Course> courses = [];
  final PageController pageController = PageController(initialPage: 0);

  late User user;

  Course? course;

  int currentPageIndex = 0;
  int? previousPageIndex;
  bool isBackPressed = false;

  Set<String> selectedCategories = {};

  init() async {
    loadUser();
    loadCourses();
  }

  Future<void> searchCourse() async {
    _navigationService.navigateToSearchResultsView();
  }

  void coursePressed(Course course) async {
    setBusy(true);
    final isPurchaseCourse =
        await _courseRepository.isCoursePurchased(course.id);
    setBusy(false);
    if (isPurchaseCourse) {
      _navigationService.navigateToLessonCoursesView(course: course);
    } else {
      _navigationService.navigateToProjectDetailView(course: course);
    }
  }

  void onPageChanged(int index) {
    previousPageIndex = currentPageIndex;
    currentPageIndex = index;

    rebuildUi();
  }

  void onDestinationSelected(int index) {
    int tempIndex = currentPageIndex;
    changePage(index);
    previousPageIndex = tempIndex;
  }

  void onBackPressed() {
    if (previousPageIndex == null) {
      _navigationService.back();
    }
    if (isBackPressed == true) {
      changePage(0);
      isBackPressed = false;
    } else {
      changePage(previousPageIndex!);
      isBackPressed = true;
    }
    previousPageIndex = null;
  }

  void changePage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    rebuildUi();
  }

  void onSelectedCategoryChanged(Set<String> category) {
    selectedCategories = category;
    rebuildUi();

    loadCourses();
  }

  void loadCourses() {
    setBusy(true);
    final query = searchTextController.text;

    _courseRepository.searchCourses(query, selectedCategories).then((value) {
      courses = value;
      setBusy(false);
    });
  }

  Future<void> loadUser() async {
    setBusyForObject(BusyObjectConstants.userText, true);
    final response = await _authenticationService.getCurrentUser();
    response.fold(
        (l) => _snackBarService.showSnackbar(
              message: l.message,
              duration: const Duration(seconds: 2),
            ),
        (r) => user = r);
    setBusyForObject(BusyObjectConstants.userText, false);
  }
}
