import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/services/repository_service.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _snackBarService = locator<SnackbarService>();
  final _shared = locator<SharedService>();

  final _repository = locator<RepositoryService>();

  bool isPasswordVisible = false;


  void signUp() {
    _navigationService.navigateToSignUpView();
  }

  void showPassword() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void forgetPassword() {
    _navigationService.replaceWithForgotPasswordView();
  }

  Future<void> logIn() async {
    final response = await _repository.login(
      emailController.text,
      passwordController.text,
    );

    if (response != null) {
      // _snackBarService.showSnackbar(message: "Login Sucess.");
    await _shared.setUser(AppConstants.userPrefKey, response);
         _navigationService.replaceWithHomeView();
    } else {
      _snackBarService.showSnackbar(message: "Email or Password incorrect.");
    }
  }
}
