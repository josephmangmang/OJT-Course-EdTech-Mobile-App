import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/services/repository_service.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _snackBarService = locator<SnackbarService>();

  final _repository = locator<RepositoryService>();

  bool isPasswordVisible = false;

  void signUp() {
    _navigationService.navigateToSignUpView();
  }

  void showPassword() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  Future<void> logIn() async{
    final response = await _repository.login(
      emailController.text,
      passwordController.text,
    );

    if (response == true) {
      _snackBarService.showSnackbar(message: response.toString());
      _navigationService.replaceWithHomeView();
    } else {
      _snackBarService.showSnackbar(message: response.toString());
    }
  }
}
