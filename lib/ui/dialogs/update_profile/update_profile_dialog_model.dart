import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/image_service.dart';
import '../../common/app_constants.dart';

class UpdateProfileDialogModel extends BaseViewModel {
  File? image;
  final imageService = locator<ImageService>();
  final snackbarService = locator<SnackbarService>();
  final navigationService = locator<NavigationService>();

  void pickImage(ImageSource source) async {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      this.image = imageTemporary;
      rebuildUi();

  }

  void uploadImage(BuildContext context) async {
    setBusy(true);
    var response = await imageService.uploadProfile(image!);
    response.fold(
        (l) => snackbarService.showSnackbar(
            message: l.message, duration: const Duration(seconds: 2)), (r) {
      Navigator.of(context).pop();
      snackbarService.showSnackbar(
          message: AppConstants.profileChangeSuccessfullyText,
          duration: const Duration(seconds: 2));
    });
    setBusy(false);
  }
}
