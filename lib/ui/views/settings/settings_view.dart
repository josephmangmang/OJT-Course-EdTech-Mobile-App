import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/resources/svg_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'settings_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  final Function() onBackPressed;

  const SettingsView({Key? key, required this.onBackPressed}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    return viewModel.isBusy
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    CustomAppBar(
                      backButtonPressed: onBackPressed,
                      title: AppConstants.settingText,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Image.asset(PngImages.coolKidsOnWheels2),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      height: 82,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFFBEBAB3), width: 1),
                          borderRadius: BorderRadius.circular(16)),
                      width: double.infinity,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF65A9E9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(56),
                                ),
                              ),
                              child: Transform.scale(
                                scale: 0.5,
                                child: SvgPicture.asset(SvgImages.notification),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 12, right: 8),
                                child: const Text(
                                  AppConstants.notificationText,
                                  style: TextStyle(
                                    color: Color(0xFF3B3936),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.50,
                                  ),
                                ),
                              ),
                            ),
                            SvgPicture.asset(SvgImages.toggleButtons)
                          ]),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        AppConstants.accountInfoText,
                        style: TextStyle(
                          color: Color(0xFF3B3936),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.50,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    buildCell(
                      icon: SvgImages.path,
                      title: AppConstants.nameText,
                      subtitle: viewModel.user!.name,
                    ),
                    buildCell(
                      icon: SvgImages.shape,
                      title: AppConstants.emailText,
                      subtitle: viewModel.user!.email,
                    ),
                    buildCell(
                      icon: SvgImages.vector,
                      title: AppConstants.passwordText,
                      subtitle: 'changed 2 weeks ago',
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();

  @override
  void onViewModelReady(SettingsViewModel viewModel) {
    viewModel.getUser();
    super.onViewModelReady(viewModel);
  }
}

Widget buildCell({
  required String icon,
  required String title,
  required String subtitle,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 16),
    height: 82,
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFBEBAB3), width: 1),
        borderRadius: BorderRadius.circular(16)),
    width: double.infinity,
    child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: ShapeDecoration(
              color: const Color(0xFF65A9E9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(56),
              ),
            ),
            child: Transform.scale(
              scale: 0.5,
              child: SvgPicture.asset(
                icon,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 12, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.50,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Color(0xFF78746D),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SvgPicture.asset(SvgImages.icon)
        ]),
  );
}
