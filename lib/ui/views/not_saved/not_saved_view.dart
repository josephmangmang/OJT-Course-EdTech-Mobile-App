import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../custom_widget/app_button.dart';
import 'not_saved_viewmodel.dart';

class NotSavedView extends StackedView<NotSavedViewModel> {
  const NotSavedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NotSavedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                CustomAppBar(
                  title: AppConstants.savedText,
                ),
                const SizedBox(
                  height: 127,
                ),
                Image.asset(PngImages.coolKidsAloneTime),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  AppConstants.courseNotSavedText,
                  style: TextStyle(
                    color: Color(0xFF3B3936),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.50,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppConstants.courseNotSavedBodyText,
                  style: TextStyle(
                    color: Color(0xFF78746D),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 32,
                ),
                AppButton( onClick: () { }, title: AppConstants.continueText, ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  NotSavedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotSavedViewModel();
}
