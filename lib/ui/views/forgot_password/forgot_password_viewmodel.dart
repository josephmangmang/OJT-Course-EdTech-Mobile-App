import 'package:edtechapp/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/repository_service.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final emailController = TextEditingController();

   final _snackBarService = locator<SnackbarService>();
final _navigationService = locator<NavigationService>();
  final _repository = locator<RepositoryService>();
  get goToLoginPage => null;

  Future<void> submit() async {
    final response = await _repository.forgetPassword(
      emailController.text,
    );

    if (response == true) {
      _snackBarService.showSnackbar(message: "Password reset link! Check you email.");
    } else {
      _snackBarService.showSnackbar(message: "Email not exist in firebase.");
    }
  }
}
