import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../model/user.dart';
import '../../../services/authentication_service.dart';
import '../../../services/shared_service.dart';
import '../../common/app_constants.dart';

class SettingsViewModel extends BaseViewModel {
  final _authenticationService = locator<AuthenticationService>();
  User? user;

  getUser() async {
    setBusy(true);
    final response = await _authenticationService.getCurrentUser();
    response.fold((l) => print(l.message), (r) => user = r);
    setBusy(false);
  }
}
