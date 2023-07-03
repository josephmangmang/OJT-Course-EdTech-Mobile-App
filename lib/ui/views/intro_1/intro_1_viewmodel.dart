import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class Intro1ViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String buttonText = 'Next';
  void goToHomePage() {
    _navigationService.replaceWithHomeView();
  }

  void changeText() {
    buttonText = 'Let\'s Start';
    rebuildUi();
  }

  void changeTextToNext() {
    buttonText = "Next";
    notifyListeners();
  }

  void updateCurrentPageIndex(int index) {}
}
