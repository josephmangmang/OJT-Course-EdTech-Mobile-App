import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_checkout_viewmodel.dart';

class PaymentCheckoutView extends StackedView<PaymentCheckoutViewModel> {
  const PaymentCheckoutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PaymentCheckoutViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  PaymentCheckoutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentCheckoutViewModel();
}
