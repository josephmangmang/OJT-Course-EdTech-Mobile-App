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

import '../../../model/course.dart';
import '../../../services/repository_service.dart';

class HomeViewModel extends BaseViewModel {
  TextEditingController searchTextController = TextEditingController(); 
  String category = "";
  final _repository = locator<RepositoryService>();
  final _shared = locator<SharedService>();
  final _navigationService = locator<NavigationService>();
  List<Course> listOfCourse = [];
  final PageController pageController = PageController(initialPage: 0); // Added currentIndex variable

  User? user;

  Course? course;

  int currentPageIndex = 0;

  getData() async {
    setBusy(true);
    user = await _shared.getUser(AppConstants.userPrefKey);
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

  Future<void> searchCourse() async{
  setBusy(true);
  searchText = searchTextController.text;
  listOfCourse = [];
  await _repository.searchCourse(
    searchTextController.text
  ).then((value) {
    if (value.isNotEmpty) {
      listOfCourse = value;
      _navigationService.navigateToSearchResultsView();
    }
  });
    
  print(searchTextController.text);  
  setBusy(false);
  rebuildUi();
}

  Future<void> categoryCourse() async{
  setBusy(true);
  listOfCourse = [];
  await _repository.categoryCourse(
    category
  ).then((value) {
    if (value.isNotEmpty) {
      listOfCourse = value;
    }
  });
    
  print(searchTextController.text);  
  setBusy(false);
  rebuildUi();
}

  void onPageChanged(int index) {
    currentPageIndex = index;
    rebuildUi();
  }

  void onDestinationSelected(int index) {
    currentPageIndex = index;
    pageController.animateToPage(
      currentPageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  int getColor (int index) {
    index++;
   return index % 2 == 0? 0xFFF7F2EE : 0xFFE6EDF4;
  
  }
 
}
