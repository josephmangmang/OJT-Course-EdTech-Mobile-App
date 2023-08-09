import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'no_payment_viewmodel.dart';

class NoPaymentView extends StackedView<NoPaymentViewModel> {
  const NoPaymentView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NoPaymentViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomAppBar(
                    title: AppConstants.paymentText,
                  ),
                ),
                const SizedBox(
                  height: 127,
                ),
                Image.asset(PngImages.coolKidsAloneTime1),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  AppConstants.noPaymentMethodText,
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
                  AppConstants.noPaymentMethodBodyText,
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
                AppButton(
                  title: AppConstants.continueText,
                  onClick: viewModel.btnContinuePressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  NoPaymentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NoPaymentViewModel();
}
