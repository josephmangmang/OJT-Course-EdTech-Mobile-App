import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class IntroViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPrefServiceService>();
  String buttonText = 'Next';
  void goToLoginPage() {
    _sharedPrefService.setAppIntroGuide();
    _navigationService.replaceWithLoginView();
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
