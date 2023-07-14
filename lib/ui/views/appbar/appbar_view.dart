import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
            onPressed: viewModel.back,
            icon: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset('assets/svg/Background.svg'),
                SvgPicture.asset('assets/svg/Go-back.svg'),
              ],
            ),
          ),
          Expanded(
            child: Text(
              appBarTitle,
              style: const TextStyle(
                color: Color(0xFF3B3936),
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  AppbarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppbarViewModel();
}
