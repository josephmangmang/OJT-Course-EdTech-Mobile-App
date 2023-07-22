import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/search_course.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
import '../../../model/course.dart';
import '../../../resources/svg_images.dart';
import '../../custom_widget/course_card.dart';
import 'home_viewmodel.dart';
import 'package:edtechapp/ui/views/profile/profile_view.dart';
import 'package:edtechapp/ui/views/settings/settings_view.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  set index(int index) {}

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: viewModel.isBusy
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    Expanded(
                      child: PageView(
                        controller: viewModel.pageController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        onPageChanged: viewModel.onPageChanged,
                        children: [
                          SafeArea(
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 8,
                                      bottom: 12,
                                      left: 16,
                                      right: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                AppConstants.helloText,
                                                style: TextStyle(
                                                  color: Color(0xFF3B3936),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),

                                              ),
                                              Text(
                                                viewModel.user.name,
                                                style: const TextStyle(
                                                  color: Color(0xFF333333),
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w900,
                                                  letterSpacing: -1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 24,
                                        ),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                SvgImages.background),
                                            SvgPicture.asset(
                                                SvgImages.notification),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SearchCourse(
                                      searchPressed: viewModel.searchCourse,
                                      searchTextController:
                                          viewModel.searchTextController),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      right: 16,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 16, right: 10),
                                          child: const Text(
                                            AppConstants.categoryText,
                                            style: TextStyle(
                                              color: Color(0xFF3B3936),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: SingleChildScrollView(
                                            scrollDirection:
                                                Axis.horizontal,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    54,
                                                                    24)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0), // Adjust the radius as per your needs
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    viewModel.category =
                                                        '#Java';
                                                    viewModel
                                                        .categoryCourse();
                                                  },
                                                  child:
                                                      const Text('#Java'),
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    47,
                                                                    24)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0), // Adjust the radius as per your needs
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    viewModel.category =
                                                        '#App Dev';
                                                    viewModel
                                                        .categoryCourse();
                                                  },
                                                  child: const Text(
                                                      '#App Dev'),
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    62,
                                                                    24)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0), // Adjust the radius as per your needs
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    viewModel.category =
                                                        '#Mobile App';
                                                    viewModel
                                                        .categoryCourse();
                                                  },
                                                  child: const Text(
                                                      '#Mobile App'),
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    43,
                                                                    24)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0), // Adjust the radius as per your needs
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    viewModel.category =
                                                        '#HTML/CSS';
                                                    viewModel
                                                        .categoryCourse();
                                                  },
                                                  child: const Text(
                                                      '#HTML/CSS'),
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    43,
                                                                    24)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0), // Adjust the radius as per your needs
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    viewModel.category =
                                                        '#Javascript';
                                                    viewModel
                                                        .categoryCourse();
                                                  },
                                                  child: const Text(
                                                      '#Javascript'),
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    43,
                                                                    24)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0), // Adjust the radius as per your needs
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    viewModel.category =
                                                        '#Web';
                                                    viewModel
                                                        .categoryCourse();
                                                  },
                                                  child: const Text('#Web'),
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    43,
                                                                    24)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0), // Adjust the radius as per your needs
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    viewModel.category =
                                                        '#Swift';
                                                    viewModel
                                                        .categoryCourse();
                                                  },
                                                  child:
                                                      const Text('#Swift'),
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    43,
                                                                    24)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0), // Adjust the radius as per your needs
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    viewModel.category =
                                                        '#Sql';
                                                    viewModel
                                                        .categoryCourse();
                                                  },
                                                  child: const Text('#Sql'),
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                    minimumSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                                const Size(
                                                                    43,
                                                                    24)),
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0), // Adjust the radius as per your needs
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    viewModel.category =
                                                        '#Telecom';
                                                    viewModel
                                                        .categoryCourse();
                                                  },
                                                  child: const Text(
                                                      '#Telecom'),
                                                ),
                                                const SizedBox(
                                                  width: 16,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      primary: false,
                                      itemCount:
                                      viewModel.listOfCourse.length,
                                      itemBuilder: (context, index) {
                                        var courseItem =
                                        viewModel.listOfCourse[index];
                                        return CourseCard(
                                          course: courseItem,
                                          onItemPressed: (Course course) {
                                            viewModel
                                                .coursePressed(courseItem);
                                          },
                                          backgroundColor: Color(
                                              index % 2 == 0
                                                  ? 0xFFF7F2EE
                                                  : 0xFFE6EDF4),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ProfileView(
                            onBackPressed: () {
                              viewModel.onBackPressed();
                            },
                          ),
                          SettingsView(
                            onBackPressed: () {
                              viewModel.onBackPressed();
                            },
                          ),
                        ],
                      ),
                    ),
                    NavigationBarTheme(

                      data: NavigationBarThemeData(

                        indicatorColor: Colors.white,
                        labelTextStyle:
                            MaterialStateProperty.resolveWith<TextStyle>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFE35629),
                            );
                          } else {
                            return const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            );
                          }
                        }),
                      ),
                      child: NavigationBar(

                        backgroundColor: Colors.white,
                        height: 60,
                        selectedIndex: viewModel.currentPageIndex,
                        onDestinationSelected: viewModel.onDestinationSelected,
                        destinations: [
                          NavigationDestination(
                              icon: SvgPicture.asset(
                                SvgImages.courses,
                              ),
                              selectedIcon: SvgPicture.asset(
                                SvgImages.courses,
                                color: const Color(0xFFE35629),
                              ),
                              label: AppConstants.courseText),
                          NavigationDestination(
                            icon: SvgPicture.asset(
                              SvgImages.profileIcon,
                            ),
                            selectedIcon: SvgPicture.asset(
                              SvgImages.profileIcon,
                              color: const Color(0xFFE35629),
                            ),
                            label: AppConstants.profileText,
                          ),
                          NavigationDestination(
                            icon: SvgPicture.asset(
                              SvgImages.frame4,
                            ),
                            selectedIcon: SvgPicture.asset(
                              SvgImages.frame4,
                              color: const Color(0xFFE35629),
                            ),
                            label: AppConstants.settingText,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
        );
      },
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
