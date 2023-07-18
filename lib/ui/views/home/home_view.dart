import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtechapp/ui/custom_widget/custom_widget.dart';
import 'package:edtechapp/ui/custom_widget/search_course.dart';
import 'package:edtechapp/ui/views/your_courses/your_courses_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(),
                                child: Center(
                                  child: Column(
                                    children: [
                                      //verticalSpaceLarge,
                                      SizedBox(
                                        width: double.infinity,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Hello,',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Rubik',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: -0.5,
                                                    height: 1.7,
                                                  ),
                                                ),
                                                Text(
                                                  viewModel.user.name,
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 32,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: 'Rubik',
                                                    fontStyle: FontStyle.normal,
                                                    letterSpacing: -1,
                                                    height: 1.5,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                  ),
                                                  child: ClipOval(
                                                    child: SizedBox(
                                                      height: 48,
                                                      width: 48,
                                                      child: IconButton(
                                                        onPressed: () {},
                                                        icon: SvgPicture.asset(
                                                            SvgImages
                                                                .notification),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SearchCourse(searchPressed: viewModel.searchCourse, searchTextController: viewModel.searchTextController),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const Text('Category:'),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                            Size>(
                                                        const Size(54, 24)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as per your needs
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.category = '#Java';
                                                viewModel.categoryCourse();
                                              },
                                              child: const Text('#Java'),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                            Size>(
                                                        const Size(47, 24)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as per your needs
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.category = '#App Dev';
                                                viewModel.categoryCourse();
                                              },
                                              child: const Text('#App Dev'),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                            Size>(
                                                        const Size(62, 24)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as per your needs
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.category =
                                                    '#Mobile App';
                                                viewModel.categoryCourse();
                                              },
                                              child: const Text('#Mobile App'),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                            Size>(
                                                        const Size(43, 24)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as per your needs
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.category =
                                                    '#HTML/CSS';
                                                viewModel.categoryCourse();
                                              },
                                              child: const Text('#HTML/CSS'),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                            Size>(
                                                        const Size(43, 24)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as per your needs
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.category =
                                                    '#Javascript';
                                                viewModel.categoryCourse();
                                              },
                                              child: const Text('#Javascript'),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                            Size>(
                                                        const Size(43, 24)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as per your needs
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.category = '#Web';
                                                viewModel.categoryCourse();
                                              },
                                              child: const Text('#Web'),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                            Size>(
                                                        const Size(43, 24)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as per your needs
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.category = '#Swift';
                                                viewModel.categoryCourse();
                                              },
                                              child: const Text('#Swift'),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                            Size>(
                                                        const Size(43, 24)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as per your needs
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.category = '#Sql';
                                                viewModel.categoryCourse();
                                              },
                                              child: const Text('#Sql'),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                minimumSize:
                                                    MaterialStateProperty.all<
                                                            Size>(
                                                        const Size(43, 24)),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0), // Adjust the radius as per your needs
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                viewModel.category = '#Telecom';
                                                viewModel.categoryCourse();
                                              },
                                              child: const Text('#Telecom'),
                                            ),
                                            const SizedBox(
                                              width: 16,
                                            ),
                                          ],
                                        ),
                                      ),
                                      ListView.builder(
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
                                                index + 1 % 2 == 0
                                                    ? 0xFFF7F2EE
                                                    : 0xFFE6EDF4),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
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
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w400,
                              color: Colors.orange,
                            );
                          } else {
                            return const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Rubik',
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
                                color: Colors.orange,
                              ),
                              label: 'Courses'),
                          NavigationDestination(
                            icon: SvgPicture.asset(
                              SvgImages.profileIcon,
                            ),
                            selectedIcon: SvgPicture.asset(
                              SvgImages.profileIcon,
                              color: Colors.orange,
                            ),
                            label: 'Profile',
                          ),
                          NavigationDestination(
                            icon: SvgPicture.asset(
                              SvgImages.frame4,
                            ),
                            selectedIcon: SvgPicture.asset(
                              SvgImages.frame4,
                              color: Colors.orange,
                            ),
                            label: 'Settings',
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
