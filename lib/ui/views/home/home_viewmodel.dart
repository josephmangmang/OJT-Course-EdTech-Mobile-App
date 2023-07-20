import 'dart:io';
import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/model/user.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../model/course.dart';
import '../../../services/authentication_service.dart';
import '../../../services/repository_service.dart';

class HomeViewModel extends BaseViewModel {
  TextEditingController searchTextController = TextEditingController();
  String category = "";
  final _repository = locator<RepositoryService>();
  final _shared = locator<SharedService>();
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  List<Course> listOfCourse = [];
  final PageController pageController =
      PageController(initialPage: 0); // Added currentIndex variable

  late User user;

  Course? course;

  int currentPageIndex = 0;
  int? previousPageIndex;
  bool isBackPressed = false;

  init() async {
    listOfCourse.clear();
    print(listOfCourse.length);
    setBusy(true);

    final response = await _authenticationService.getCurrentUser();

    response.fold((l) => print(l.message), (r) => user = r);

    // course = await _shared.getCourse(AppConstants.coursePrefKey);

    await _repository.getCourse().then((value) {
      if (value.isNotEmpty) {
        listOfCourse = value;
      }
    });

    print(listOfCourse.toString());
    print(listOfCourse.length);
    setBusy(false);
  }

  Future<void> searchCourse() async {
    setBusy(true);
    searchText = searchTextController.text;
    await _repository.searchCourse(searchTextController.text).then((value) {
      if (value.isNotEmpty) {
        _navigationService.navigateToSearchResultsView();
      } else {
        _navigationService.navigateToNotFoundView();
      }
    });

    print(searchTextController.text);
    searchTextController.clear();
    setBusy(false);

    rebuildUi();
  }

  Future<void> categoryCourse() async {
    setBusy(true);
    listOfCourse = [];
    await _repository.categoryCourse(category).then((value) {
      if (value.isNotEmpty) {
        listOfCourse = value;
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
    print(
        "onDestination current $currentPageIndex, previous $previousPageIndex isBack$isBackPressed");
    rebuildUi();
  }

  void onDestinationSelected(int index) {
    int tempIndex = currentPageIndex;
    changePage(index);
    previousPageIndex = tempIndex;
    print(
        "onDestination current $currentPageIndex, previous $previousPageIndex isBack$isBackPressed");
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
      print(
          "onDestination current $currentPageIndex, previous $previousPageIndex isBack$isBackPressed");
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
}
