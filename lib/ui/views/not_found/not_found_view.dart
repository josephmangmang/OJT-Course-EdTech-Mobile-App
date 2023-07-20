import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/resources/svg_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/search_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: viewModel.goBack,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(SvgImages.background),
                        SvgPicture.asset(SvgImages.goBack),
                      ],
                    ),
                  ),
                ),
                SearchCourse(
                    searchPressed: viewModel.seachCourse,
                    searchTextController: viewModel.searchTextController),
                const SizedBox(
                  height: 32,
                ),
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
          ),
        ),
      ),
    );
  }

  @override
  NotFoundViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotFoundViewModel();
}
