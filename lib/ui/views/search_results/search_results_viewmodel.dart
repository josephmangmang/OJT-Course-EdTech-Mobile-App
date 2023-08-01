import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/repository/course_repository.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/course.dart';

class SearchResultsViewModel extends BaseViewModel {
  TextEditingController searchTextController = TextEditingController();
  final _navigationService = locator<NavigationService>();
  final _courseRepository = locator<CourseRepository>();
  List<Course> results = [];

  Course? course;

  String? prevQuery;

  void init() {
    // initial search
    searchCourses(searchTextController.text);

    searchTextController.addListener(() {
      searchCourses(searchTextController.text);
    });
  }

  void coursePressed(Course course) {
    _navigationService.navigateToProjectDetailView(course: course);
  }

  void back() async {
    _navigationService.back();
  }

  void searchCourses(String query) {
    if (query == prevQuery) {
      return;
    }
    setBusy(true);
    prevQuery = query;
    _courseRepository.searchCourses(query, {}).then((value) {
      results = value;
      setBusy(false);
    });
  }
}
