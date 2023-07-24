import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:edtechapp/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../services/authentication_service.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authenticationService = locator<AuthenticationService>();
  final _sharedPrefService = locator<SharedPrefServiceService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic
    if (_authenticationService.isLoggedIn) {
      _navigationService.replaceWithHomeView();
    } else {
      if(await _sharedPrefService.appIntroGuideValidation()){
        _navigationService.replaceWithLoginView();
      }
      else {
        _navigationService.replaceWithIntroPage();
      }

    }
  }
}
