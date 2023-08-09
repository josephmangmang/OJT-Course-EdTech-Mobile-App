import 'package:edtechapp/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../model/user.dart';
import '../../../services/authentication_service.dart';
import '../../common/app_constants.dart';

class UpdatePasswordDialogModel extends BaseViewModel {
  final currentPasswordField = TextEditingController();
  final updatePasswordField = TextEditingController();
  final matchPasswordField = TextEditingController();
  final authenticationService = locator<AuthenticationService>();
  final snackbarService = locator<SnackbarService>();
  final _navigatorService = locator<NavigationService>();

  late User user;

  void updatePassword() async {
    setBusy(true);
    var response = await authenticationService.updatePassword(
        currentPasswordField.text, matchPasswordField.text);
    response.fold(
        (l) => snackbarService.showSnackbar(
            message: l.message, duration: const Duration(seconds: 2)), (r) {
      _navigatorService.replaceWithLoginView();
      snackbarService.showSnackbar(
          message: AppConstants.passwordChangedSuccessfullyText,
          duration: const Duration(seconds: 2));
    });
    setBusy(false);
  }
}
