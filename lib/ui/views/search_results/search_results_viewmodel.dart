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
  final _shared = locator<SharedService>();
  final _navigationService = locator<NavigationService>();
  List<Course> listOfCourse = [];

   Future<void> searchCourse() async{
  setBusy(true);
  listOfCourse = [];
  await _repository.searchCourse(
    searchText
  ).then((value) {
    if (value.isNotEmpty) {
      searchTextController.text = searchText;
      listOfCourse = value;
    }
  });

}
  int getColor(int index) {
    index++;
    return index % 2 == 0 ? 0xFFF7F2EE : 0xFFE6EDF4;
  }
}