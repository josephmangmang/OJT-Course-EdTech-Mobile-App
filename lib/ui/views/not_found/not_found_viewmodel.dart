import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/repository_service.dart';

class NotFoundViewModel extends BaseViewModel {
  TextEditingController searchTextController = TextEditingController();
  final _navigationService = locator<NavigationService>();
  final _repository = locator<RepositoryService>();

  init() {
    setBusy(true);
    searchTextController.text = searchText;
    setBusy(false);
  }

  void goBack() {
    _navigationService.back();
  }

  void seachCourse() async {
    setBusy(true);
    searchText = searchTextController.text;
    await _repository.searchCourse(searchTextController.text).then((value) {
      if (value.isNotEmpty) {
        _navigationService.replaceWithSearchResultsView();
      } else {
        searchTextController.text = searchText;
      }
    });

    setBusy(false);

    rebuildUi();
  }
}
