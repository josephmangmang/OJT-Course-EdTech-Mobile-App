import 'dart:io';
import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/model/user.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../model/course.dart';
import '../../../repository/course_repository.dart';
import '../../../services/authentication_service.dart';
import '../../../services/repository_service.dart';

class HomeViewModel extends BaseViewModel {
  TextEditingController searchTextController = TextEditingController();
  String category = "";
  final _repository = locator<RepositoryService>();
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  final _courseRepository = locator<CourseRepository>();

  List<Course> courses = [];
  final PageController pageController = PageController(initialPage: 0); // Added currentIndex variable

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

  Future<void> categoryCourse() async {
    setBusy(true);
    courses = [];
    await _repository.categoryCourse(category).then((value) {
      if (value.isNotEmpty) {
        courses = value;
      }
    });

    print(searchTextController.text);
    setBusy(false);
    rebuildUi();
  }

  void coursePressed(Course course) {
    _navigationService.navigateToProjectDetailView(course: course);
  }

  void onPageChanged(int index) {
    previousPageIndex = currentPageIndex;
    currentPageIndex = index;
    print("onDestination current $currentPageIndex, previous $previousPageIndex isBack$isBackPressed");
    rebuildUi();
  }

  void onDestinationSelected(int index) {
    int tempIndex = currentPageIndex;
    changePage(index);
    previousPageIndex = tempIndex;
    print("onDestination current $currentPageIndex, previous $previousPageIndex isBack$isBackPressed");
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
      print("onDestination current $currentPageIndex, previous $previousPageIndex isBack$isBackPressed");
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
    setBusyForObject('user', true);
    final response = await _authenticationService.getCurrentUser();
    response.fold((l) => print(l.message), (r) => user = r);
    setBusyForObject('user', false);
  }
}
