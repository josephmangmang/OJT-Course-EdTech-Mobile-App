import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class IntroViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String buttontext = 'Next';
  void goToLoginPage() {
    _navigationService.replaceWithLoginView();
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
