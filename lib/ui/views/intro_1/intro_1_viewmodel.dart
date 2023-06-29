import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class Intro1ViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String buttontext = 'Next';
  void goToHomePage() {
    _navigationService.replaceWithHomeView();
  }

  void changeText() {
    buttontext = 'Let\'s Start';
    rebuildUi();
  }
  void changeTextToNext() {
    buttontext = "Next";
    notifyListeners();
  }

  void updateCurrentPageIndex(int index) {}
}
