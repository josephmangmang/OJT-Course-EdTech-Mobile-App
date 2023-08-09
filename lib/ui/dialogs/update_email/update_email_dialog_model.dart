import 'package:edtechapp/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/authentication_service.dart';
import '../../common/app_constants.dart';

class UpdateEmailDialogModel extends BaseViewModel {
  final currentEmailField = TextEditingController();
  final updateEmailField = TextEditingController();
  final currentPasswordField = TextEditingController();
  final authenticationService = locator<AuthenticationService>();
  final snackbarService = locator<SnackbarService>();
  final _navigatorService = locator<NavigationService>();

  void updateEmail() async {
    setBusy(true);
    var response = await authenticationService.updateEmail(
        currentEmailField.text,
        currentPasswordField.text,
        updateEmailField.text);
    response.fold(
        (l) => snackbarService.showSnackbar(
            message: l.message, duration: const Duration(seconds: 2)), (r) {
      _navigatorService.replaceWithLoginView();
      snackbarService.showSnackbar(
          message: AppConstants.emailChangeSuccessfullyText,
          duration: const Duration(seconds: 2));
    });
    setBusy(false);
  }
}
