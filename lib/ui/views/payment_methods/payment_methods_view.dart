import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_methods_viewmodel.dart';

class PaymentMethodsView extends StackedView<PaymentMethodsViewModel> {
  const PaymentMethodsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PaymentMethodsViewModel viewModel,
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
  PaymentMethodsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentMethodsViewModel();
}
