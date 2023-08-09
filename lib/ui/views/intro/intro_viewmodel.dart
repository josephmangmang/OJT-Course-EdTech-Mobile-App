import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../common/app_constants.dart';

class IntroViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPrefServiceService>();
  String buttonText = AppConstants.nextText;
  void goToLoginPage() {
    _sharedPrefService.setAppIntroGuide();
    _navigationService.replaceWithLoginView();
  }

  void changeText() {
    buttonText = AppConstants.letsStartText;
    rebuildUi();
  }

  void changeTextToNext() {
    buttonText = AppConstants.nextText;
    notifyListeners();
  }

  void updateCurrentPageIndex(int index) {}
}
