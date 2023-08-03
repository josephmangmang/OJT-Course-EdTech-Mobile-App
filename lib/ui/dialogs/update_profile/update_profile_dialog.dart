import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:edtechapp/ui/common/app_colors.dart';
import 'package:edtechapp/ui/common/ui_helpers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'update_profile_dialog_model.dart';

const double _graphicSize = 60;

class UpdateProfileDialog extends StackedView<UpdateProfileDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const UpdateProfileDialog( {
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UpdateProfileDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      request.title!,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    verticalSpaceTiny
                  ],
                ),
                Container(
                  width: _graphicSize,
                  height: _graphicSize,
                  decoration: const BoxDecoration(
                    color: Color(0xffF6E7B0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(_graphicSize / 2),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '👦',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            viewModel.image != null
                ? Image.file(
                    viewModel.image!,
                    width: 160,
                    height: 160,
                  )
                : request.imageUrl!.isNotEmpty ?  Image.network(request.imageUrl!, width: 160, height: 160,) : Image.asset(PngImages.coolKidsBust, width: 160, height: 160),
            verticalSpaceMedium,
            AppButton(
                title: 'Pick Gallery',
                onClick: () {
                  viewModel.pickImage(ImageSource.gallery);
                }),
            AppButton(
                title: 'Pick Camera',
                onClick: () {
                  viewModel.pickImage(ImageSource.camera);
                }),
            verticalSpaceMedium,
            GestureDetector(
              onTap: () {
                viewModel.uploadImage(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: viewModel.isBusy
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      )
                    : const Text(
                        'Change',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  UpdateProfileDialogModel viewModelBuilder(BuildContext context) =>
      UpdateProfileDialogModel();

}
