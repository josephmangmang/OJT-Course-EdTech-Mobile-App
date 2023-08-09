import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'not_found_viewmodel.dart';

class NotFoundView extends StackedView<NotFoundViewModel> {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NotFoundViewModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(PngImages.coolKidsStanding),
          const SizedBox(
            height: 32,
          ),
          const Text(
            AppConstants.courseNotFoundText,
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
            AppConstants.courseNotFoundBodyText,
            style: TextStyle(
              color: Color(0xFF78746D),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  NotFoundViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotFoundViewModel();

}
