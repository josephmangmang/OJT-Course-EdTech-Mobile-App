import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class NotFoundViewModel extends BaseViewModel {
  TextEditingController searchTextController = TextEditingController();
  final _navigationService = locator<NavigationService>();
  void goBack() {
    _navigationService.back();
  }

  void seachCourse() {

  }

}
