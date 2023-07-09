import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final nameTextController = TextEditingController();

  get goToLoginPage => null;
}
