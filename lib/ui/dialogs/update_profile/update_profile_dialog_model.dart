import 'dart:io';

import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/ui/views/home/home_viewmodel.dart';
import 'package:edtechapp/ui/views/profile/profile_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/image_service.dart';

class UpdateProfileDialogModel extends BaseViewModel {
  File? image;
  final imageService = locator<ImageService>();
  final snackbarService = locator<SnackbarService>();
  final navigationService = locator<NavigationService>();
  final homeViewModel = locator<HomeViewModel>();

  void pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      this.image = imageTemporary;
      rebuildUi();
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  void uploadImage(BuildContext context) async {
    setBusy(true);
    var response = await imageService.uploadProfile(
        image!);
    response.fold(
            (l) => snackbarService.showSnackbar(
            message: l.message, duration: const Duration(seconds: 2)), (r) {
              Navigator.of(context).pop();
      snackbarService.showSnackbar(
          message: "Profile change successfully!",
          duration: const Duration(seconds: 2));
    });
    setBusy(false);

  }

}
