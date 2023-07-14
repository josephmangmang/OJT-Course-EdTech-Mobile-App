import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'appbar_viewmodel.dart';

class AppbarView extends StackedView<AppbarViewModel> {
  const AppbarView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppbarViewModel viewModel,
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
  AppbarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppbarViewModel();
}
