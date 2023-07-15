import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:edtechapp/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/user.dart';
import '../../../services/shared_service.dart';
import '../../common/app_constants.dart';
import '../../views/home/home_viewmodel.dart';

class ProfileViewModel extends BaseViewModel {
  final _shared = locator<SharedService>();
  final _navigationService = locator<NavigationService>();

  User? user;

  void goBack() {
    _navigationService.navigateToIntroPage();
    _navigationService.replaceWithHomeView();
  }
  getUser() async {
    setBusy(true);
    user = await _shared.getUser(AppConstants.userPrefKey);
    notifyListeners();
    setBusy(false);
  }
}
