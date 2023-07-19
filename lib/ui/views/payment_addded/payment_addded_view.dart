import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'payment_addded_viewmodel.dart';

class PaymentAdddedView extends StackedView<PaymentAdddedViewModel> {
  const PaymentAdddedView({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                CustomAppBar(
                  title: "Payment",
                ),
                const SizedBox(
                  height: 127,
                ),
                Image.asset('assets/png/Cool Kids Sitting.png'),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Payment method added',
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
                  'You can buy the course now. \nContinue to payment.',
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
                  title: "Continue",
                  onClick: viewModel.payCourse,
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
