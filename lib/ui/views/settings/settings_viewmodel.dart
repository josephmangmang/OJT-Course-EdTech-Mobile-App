import 'package:edtechapp/resources/svg_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../model/user.dart';
import '../../../services/authentication_service.dart';
import '../../../services/shared_service.dart';
import '../../common/app_constants.dart';

class SettingsViewModel extends BaseViewModel {
  final _authenticationService = locator<AuthenticationService>();
  final snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();

  User? user;
  DateTime? lastUpdatedPassword;
  getUser() async {
    setBusy(true);
    final response = await _authenticationService.getCurrentUser();
    response.fold((l) => print(l.message), (r) => user = r);

    final getLastUpdatedPasswordResponse =
        await _authenticationService.getLastUpdatedPassword(user!.uid);
    getLastUpdatedPasswordResponse.fold(
        (l) => snackBarService.showSnackbar(message: l.message, duration: const Duration(seconds: 2)),
        (r) => lastUpdatedPassword = r?.toDate());
    // userInfo(0);
    setBusy(false);
  }

  void showUpdatePasswordPopup() async {
    await _dialogService.showCustomDialog(
      title: "Change Password",
      variant: DialogType.updatePassword,
      description: "",
    );
  }

  void showUpdateEmailPopup() async {
    await _dialogService.showCustomDialog(
      title: "Change Email",
      variant: DialogType.updateEmail,
      description: "",
    );
  }

  void showUpdateNamePopup() async {
    await _dialogService.showCustomDialog(
      title: "Change Email",
      variant: DialogType.updateName,
      description: "",
    );
  }
}
