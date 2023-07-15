import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/course.dart';
import '../../../services/repository_service.dart';
import '../../../services/shared_service.dart';

class SearchResultsViewModel extends BaseViewModel {
TextEditingController searchTextController = TextEditingController(); 
final _repository = locator<RepositoryService>();
String total = "";
  final _shared = locator<SharedService>();
  final _navigationService = locator<NavigationService>();
  List<Course> listOfCourse = [];

 Course? course;

   Future<void> searchCourse() async{
  setBusy(true);
  await _repository.searchCourse(
    searchText
  ).then((value) {
    if (value.isNotEmpty) {
      listOfCourse = value;
      total = '${listOfCourse.length}'' Results';
      print(listOfCourse.length);
    }
  });
  setBusy(false);
  rebuildUi();
  }

  Future<void> searchPressed() async{
  setBusy(true);
  await _repository.searchCourse(
    searchTextController.text
  ).then((value) {
    if (value.isNotEmpty) {
      listOfCourse = value;
      total = '${listOfCourse.length}'' Results';
      print(listOfCourse);
    }
  });
  setBusy(false);
  }

  void coursePressed(String courseId) {
    _navigationService.replaceWithProjectDetailView();
  }

  int getColor(int index) {
    index++;
    return index % 2 == 0 ? 0xFFF7F2EE : 0xFFE6EDF4;
  }


  void back() {
    _navigationService.back();
  }
}