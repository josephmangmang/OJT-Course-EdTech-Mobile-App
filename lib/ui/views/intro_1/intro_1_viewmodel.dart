import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class Intro1ViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String btntext = 'Next';
  void goToHomePage() {
    _navigationService.replaceWithHomeView();
  }

  void changeTxt() {
    btntext = 'Let\'s Start';
    rebuildUi();
  }
  void changeTxt2() {
    btntext = "Next";
    notifyListeners();
  }

  void updateCurrentPageIndex(int index) {}
}
