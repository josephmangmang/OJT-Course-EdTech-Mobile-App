import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'navigation_bar_viewmodel.dart';
import 'package:bottom_nav_bar/bottom_nav_bar.dart';

class NavigationBarView extends StackedView<NavigationBarViewModel> {
  const NavigationBarView({Key? key}) : super(key: key);
  @override
  Widget builder(
    BuildContext context,
    NavigationBarViewModel viewModel,
    Widget? child,
  ) {
    return BottomNavigationBar(
      selectedItemColor: Colors.orange,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svg/courses.svg',
          ),
          label: 'Courses',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svg/Profile Icon.svg',
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svg/Frame 4.svg',
          ),
          label: 'Settings',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            // Navigate to the Courses screen
            viewModel.yourCourse();

            break;
          case 1:
            // Navigate to the Profile screen
            viewModel.profile();

            break;
          case 2:
            // Navigate to the Settings screen
            viewModel.settings();

            break;
        }
      },
    );
  }

  @override
  NavigationBarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavigationBarViewModel();
}
