import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../model/user.dart';
import '../../../services/shared_service.dart';
import '../../common/app_constants.dart';

class SettingsViewModel extends BaseViewModel {

  final _shared = locator<SharedService>();

  User? user;

  getUser() async{
    setBusy(true);
    user = await _shared.getUser(AppConstants.userPrefKey);
    notifyListeners();
    setBusy(false);
  }
  
}
