import 'package:edtechapp/services/authentication_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final emailController = TextEditingController();

  final _snackBarService = locator<SnackbarService>();
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  Future<void> submit() async {
    setBusy(true);
    final response = await _authenticationService.forgetPassword(
      emailController.text,
    );
    setBusy(false);
    response.fold((l) {
      _snackBarService.showSnackbar(message: l.message);
    }, (r) {
      _snackBarService.showSnackbar(message: "Password reset link sent! Check your email");
    });
  }

  void goToLoginPage() {
    _navigationService.back();
  }
}
