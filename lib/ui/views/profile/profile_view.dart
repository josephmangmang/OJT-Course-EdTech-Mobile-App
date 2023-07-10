import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:edtechapp/ui/views/navigation_bar/navigation_bar_view.dart';
import 'profile_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

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
                Container(
                  margin: const EdgeInsets.only(right: 56 - 16),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/Background.svg'),
                          SvgPicture.asset('assets/svg/Go-back.svg'),
                        ],
                      ),
                      const Expanded(
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              color: Color(0xFF3B3936),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.50),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
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
                    backgroundImage: AssetImage('assets/png/Cool Kids Bust.png'),
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
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
                    'Your Courses',
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
                    'Saved',
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
                    'Payment',
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
                const Text(
                  'Log out',
                  style: TextStyle(
                    color: Color(0xFF78746D),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
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
