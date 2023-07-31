import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_added_viewmodel.dart';

class PaymentAddedView extends StackedView<PaymentAdddedViewModel> {
  const PaymentAddedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PaymentAdddedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                CustomAppBar(
                  title: AppConstants.paymentText,
                ),
                const SizedBox(
                  height: 127,
                ),
                Image.asset(PngImages.coolKidsSitting),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  AppConstants.paymentMethodAddedText,
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
                  AppConstants.paymentMethodAddedBodyText,
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
                  onClick: viewModel.paymentMethod,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  PaymentAdddedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentAdddedViewModel();
}
