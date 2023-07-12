import 'package:edtechapp/app/app.bottomsheets.dart';
import 'package:edtechapp/app/app.dialogs.dart';
import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/model/user.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../services/repository_service.dart';


class HomeViewModel extends BaseViewModel {
  final nameController = TextEditingController();
  final _repository = locator<RepositoryService>();
  final _shared = locator<SharedService>();
  
  User? user;

  getUser() async{
    setBusy(true);
    user = await _shared.getUser(AppConstants.userPrefKey);
    notifyListeners();
    setBusy(false);
  }
  
  void changePage() {
    rebuildUi();
  }

  void name(String name) {
    
  }
}
