import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

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
                  title: "Saved",
                ),
                const SizedBox(
                  height: 127,
                ),
                Image.asset('assets/png/Cool Kids Alone Time.png'),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Course not saved',
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
                  'Try saving the course \nagain in a few minutes',
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
                Container(
                  width: 309,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFE35629),
                  ),
                  child: const Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
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
