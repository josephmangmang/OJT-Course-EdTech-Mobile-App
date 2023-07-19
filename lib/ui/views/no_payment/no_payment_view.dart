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
                CustomAppBar(
                  title: "Payment",
                ),
                const SizedBox(
                  height: 127,
                ),
                Image.asset('assets/png/Cool Kids Alone Time (1).png'),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'No payment method',
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
                  'You don\'t have any \npayment method',
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
                  title: 'Continue',
                  onClick: () {},
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
