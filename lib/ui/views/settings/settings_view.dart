import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/resources/svg_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../custom_widget/account_information.dart';
import 'settings_viewmodel.dart';

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
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return AccountInformation(
                                title: 'Name',
                                subtitle: viewModel.user!.name,
                                icon: SvgImages.path,
                                onPressed: () {
                                  viewModel.showUpdateNamePopup();
                                });
                          case 1:
                            return AccountInformation(
                                title: 'Email',
                                subtitle: viewModel.user!.email,
                                icon: SvgImages.shape,
                                onPressed: () {
                                  viewModel.showUpdateEmailPopup();
                                });
                          case 2:
                            return AccountInformation(
                                title: 'Password',
                                dateTime: viewModel.lastUpdatedPassword,
                                icon: SvgImages.vector,
                                onPressed: () {
                                  viewModel.showUpdatePasswordPopup();
                                });
                        }
                        return null;
                      },
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
