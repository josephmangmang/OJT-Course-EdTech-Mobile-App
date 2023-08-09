import 'package:flutter/material.dart';
import 'package:edtechapp/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../common/app_constants.dart';
import 'update_email_dialog_model.dart';

const double _graphicSize = 60;

class UpdateEmailDialog extends StackedView<UpdateEmailDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const UpdateEmailDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UpdateEmailDialogModel viewModel,
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
                    '🔐',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            verticalSpaceSmall,
            TextField(
              controller: viewModel.currentEmailField,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: AppConstants.currentEmailText,
                labelStyle: const TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            verticalSpaceMedium,
            TextField(
              controller: viewModel.currentPasswordField,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: AppConstants.currentPasswordText,
                labelStyle: const TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            verticalSpaceMedium,
            TextField(
              controller: viewModel.updateEmailField,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: AppConstants.enterNewEmail,
                labelStyle: const TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            verticalSpaceMedium,
            GestureDetector(
              onTap: viewModel.updateEmail,
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
  UpdateEmailDialogModel viewModelBuilder(BuildContext context) =>
      UpdateEmailDialogModel();
}
