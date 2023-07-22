import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  final Function() onBackPressed;

  const ProfileView({Key? key, required this.onBackPressed}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: SingleChildScrollView(
        child: viewModel.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    CustomAppBar(
                      backButtonPressed: onBackPressed,
                      title: AppConstants.profileText,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3.0,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: const Color(0xFF65A9E9),
                        ),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(PngImages.coolKidsBust),
                        radius: 70,
                        backgroundColor: Color(0xFFF7F2EE),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    GestureDetector(
                      onTap: viewModel.yourCourse,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 16),
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 0.5,
                            color: const Color(0xFFBEBAB3),
                          ),
                        ),
                        child: const Text(
                          AppConstants.yourCourseText,
                          style: TextStyle(
                            color: Color(0xFF3B3936),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 0.5,
                          color: const Color(0xFFBEBAB3),
                        ),
                      ),
                      child: const Text(
                        AppConstants.savedText,
                        style: TextStyle(
                          color: Color(0xFF3B3936),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 0.5,
                          color: const Color(0xFFBEBAB3),
                        ),
                      ),
                      child: const Text(
                        AppConstants.paymentText,
                        style: TextStyle(
                          color: Color(0xFF3B3936),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextButton(
                      onPressed: viewModel.logOut,
                      child: const Text(
                        AppConstants.logoutText,
                        style: TextStyle(
                          color: Color(0xFF78746D),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
