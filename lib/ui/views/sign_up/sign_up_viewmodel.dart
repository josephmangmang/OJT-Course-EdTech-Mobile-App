import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/ui/views/home/home_view.dart';
import 'package:edtechapp/ui/views/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get_it/get_it.dart';
import '../../../app/app.locator.dart';
import 'package:edtechapp/services/repository_service.dart';

class SignUpViewModel extends BaseViewModel {
  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  final _authenticationService = locator<AuthenticationService>();
  final _navigatorService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();

  bool obscureText = true;

  void visibility() {
    obscureText = !obscureText;
    notifyListeners();
  }

  Future<void> signupPressed() async {
    setBusy(true);
    final response = await _authenticationService.signup(
      nameTextController.text,
      emailTextController.text,
      passwordTextController.text,
    );

    setBusy(false);

    response.fold((l) {
      _snackBarService.showSnackbar(message: l.message);
    }, (r) {
      _snackBarService.showSnackbar(message: "Account created successfully.");
      _navigatorService.replaceWithLoginView();
    });
  }

  void goToLoginPage() {
    _navigatorService.replaceWithLoginView();
  }

}
