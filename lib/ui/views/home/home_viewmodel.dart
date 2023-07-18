import 'dart:io';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/model/user.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:edtechapp/ui/custom_widget/custom_widget.dart';
import '../../../model/course.dart';
import '../../../services/authentication_service.dart';
import '../../../services/repository_service.dart';
import '../../../services/shared_pref_service_service.dart';

class HomeViewModel extends BaseViewModel {
  TextEditingController searchTextController = TextEditingController();
  String category = "";
  final _repository = locator<RepositoryService>();
  final _shared = locator<SharedService>();
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  List<Course> listOfCourse = [];
  final PageController pageController = PageController(initialPage: 0); // Added currentIndex variable

  late User user;

  Course? course;

  int currentPageIndex = 0;

  int? previousPageIndex;

  init() async {
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
    listOfCourse = [];
    await _repository.searchCourse(searchTextController.text).then((value) {
      if (value.isNotEmpty) {
        listOfCourse = value;
        _navigationService.navigateToSearchResultsView();
      } else {
        _navigationService.navigateToNotFoundView();
      }
    });

    print(searchTextController.text);
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
    if (previousPageIndex != currentPageIndex) {
      previousPageIndex = currentPageIndex;
    }
    currentPageIndex = index;
    rebuildUi();
  }

  void onDestinationSelected(int index) {
    if (previousPageIndex != currentPageIndex) {
      previousPageIndex = currentPageIndex;
    }
    currentPageIndex = index;
    pageController.animateToPage(
      currentPageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    rebuildUi();
  }

  void onBackPressed() {
    if (previousPageIndex != null) {
      onDestinationSelected(previousPageIndex!);
    }
    else {
      if(_navigationService.currentRoute == Routes.homeView){
        exit(0);
      }
      else {
      _navigationService.replaceWithHomeView();
      }
    }
  }
}
