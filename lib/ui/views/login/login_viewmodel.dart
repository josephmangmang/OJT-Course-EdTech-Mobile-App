import 'package:edtechapp/app/app.router.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _snackBarService = locator<SnackbarService>();

  bool isPasswordVisible = false;

  void signUp() {
    _navigationService.navigateToSignUpView();
  }

  void showPassword() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void logIn() {
    _snackBarService.showSnackbar(
      message: 'You have login',
      duration: const Duration(seconds: 2),
    );
  }
}
