import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/ui/views/home/home_view.dart';
import 'package:edtechapp/ui/views/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:get_it/get_it.dart';
import '../../../app/app.locator.dart';

class SignUpViewModel extends BaseViewModel {
  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  final _navigatorService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();

  bool obscureText = true;

  void visibility() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void signupPressed() {
    _navigatorService.navigateToHomeView();
    _snackBarService.showSnackbar(message: "Gwapa ko");
  }
}
