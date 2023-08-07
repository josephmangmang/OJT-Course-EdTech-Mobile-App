import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _snackBarService = locator<SnackbarService>();
  final _sharedPrefService = locator<SharedPrefServiceService>();

  final _authenticationService = locator<AuthenticationService>();

  bool isPasswordVisible = false;

  void signUp() {
    _navigationService.navigateToSignUpView();
  }

  void showPassword() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void goToForgetPassword() {
    _navigationService.navigateToForgotPasswordView();
  }

  Future<void> logIn() async {
    setBusy(true);
    final response = await _authenticationService.login(
        email: emailController.text, password: passwordController.text);

    setBusy(false);
    response.fold((l) {
      _snackBarService.showSnackbar(message: l.message, duration: const Duration(seconds: 2));
    }, (r) async {
      await _sharedPrefService.saveUser(r);
      _navigationService.replaceWithHomeView();
    });
  }

  void facebookLogin() async {
    final response = await _authenticationService.facebookSignIn();
    response.fold((l) => null, (r) => _navigationService.replaceWithHomeView());
  }

}
