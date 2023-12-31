import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/common/busy_object_constants.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:edtechapp/ui/custom_widget/profile_card.dart';
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
        child: Container(
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
              GestureDetector(
                onTap: viewModel.uploadProfile,
                child: viewModel.busy(BusyObjectConstants.profileText)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 3.0,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: const Color(0xFF65A9E9),
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: viewModel.image.isEmpty
                              ? const AssetImage(PngImages.coolKidsBust)
                              : Image.network(
                                  viewModel.image,
                                  width: 160,
                                  height: 160,
                                ).image,
                          radius: 70,
                          backgroundColor: const Color(0xFFF7F2EE),
                        ),
                      ),
              ),
              const SizedBox(
                height: 32,
              ),
              ProfileCard(
                onCardPressed: viewModel.yourCourse,
                title: AppConstants.yourCourseText,
              ),
              const SizedBox(
                height: 16.0,
              ),
              ProfileCard(
                onCardPressed: viewModel.paymentMethod,
                title: AppConstants.paymentText,
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

  @override
  void onViewModelReady(ProfileViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
