import 'dart:async';
import 'dart:io';

import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/services/authentication_service.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:edtechapp/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../model/user.dart';
import '../../../services/image_service.dart';
import '../../../services/shared_service.dart';
import '../../common/app_constants.dart';
import '../../views/home/home_viewmodel.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authenticationService = locator<AuthenticationService>();
  final _snackBarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();
  final _imageService = locator<ImageService>();
  String image = "";

  void init() async {
    loadProfile();
    rebuildUi();
  }

  void yourCourse() {
    _navigationService.navigateToYourCoursesView();
  }

  Future<void> logOut() async {
    setBusy(true);
    final response = await _authenticationService.logOutUser();
    setBusy(false);

    response.fold((l) {
      _snackBarService.showSnackbar(message: l.message);
    }, (r) {
      _navigationService.replaceWithLoginView();
    });
  }

  void uploadProfile() async {
    await _dialogService.showCustomDialog(
      title: "Upload Profile",
      variant: DialogType.updateProfile,
      imageUrl: image,
      description: "",
    );
  }

  void paymentMethod() async {
    await _dialogService.showCustomDialog(
      title:"Payment Method",
      variant: DialogType.paymentMethod,
      imageUrl: image,
      description: "",
    );
  }

  loadProfile() async {
    setBusyForObject('profile', true);
    final user = await _authenticationService.getCurrentUser();
    user.foldRight([], (user, List<dynamic>? previous) {
      _imageService.profileImage(user.uid).listen((imageProfile) {
        image = imageProfile;
        rebuildUi();
      });
    });

    setBusyForObject('profile', false);
  }
}
