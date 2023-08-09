import 'package:edtechapp/services/authentication_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../common/app_constants.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final emailController = TextEditingController();

  final _snackBarService = locator<SnackbarService>();
  final _authenticationService = locator<AuthenticationService>();
  Future<void> submit() async {
    setBusy(true);
    final response = await _authenticationService.forgetPassword(
      emailController.text,
    );
    setBusy(false);
    response.fold((l) {
      _snackBarService.showSnackbar(message: l.message);
    }, (r) {
      _snackBarService.showSnackbar(
          message: AppConstants.passwordResetLinkText);
    });
  }
}
