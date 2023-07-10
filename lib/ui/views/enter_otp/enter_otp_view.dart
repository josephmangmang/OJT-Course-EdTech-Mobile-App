import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'enter_otp_viewmodel.dart';

class EnterOtpView extends StackedView<EnterOtpViewModel> {
  const EnterOtpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EnterOtpViewModel viewModel,
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
  EnterOtpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EnterOtpViewModel();
}
