import 'package:edtechapp/app/app.router.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/authentication_service.dart';
import '../../../services/repository_service.dart';

class UpdateNameDialogModel extends BaseViewModel {
  final currentNameField = TextEditingController();
  final newNameField = TextEditingController();
  final repositoryService = locator<RepositoryService>();
  final snackbarService = locator<SnackbarService>();
  final _navigatorService = locator<NavigationService>();

  void updateEmail() async {
    setBusy(true);
    var response = await repositoryService.updateName(
      currentNameField.text,
      newNameField.text,
    );
    response.fold(
        (l) => snackbarService.showSnackbar(
            message: l.message, duration: const Duration(seconds: 2)), (r) {
      _navigatorService.replaceWithLoginView();
      snackbarService.showSnackbar(
          message: "Email Successfully Change! Try to login",
          duration: const Duration(seconds: 2));
    });
    setBusy(false);
  }
}
