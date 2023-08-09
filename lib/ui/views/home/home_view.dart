import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/common/busy_object_constants.dart';
import 'package:edtechapp/ui/common/firebase_constants.dart';
import 'package:edtechapp/ui/custom_widget/search_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    return Scaffold(
      body: Column(
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
                                    viewModel.busy(BusyObjectConstants.userText)
                                        ? Container()
                                        : Text(
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
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: viewModel.searchCourse,
                          child: AbsorbPointer(
                            child: SearchCourse(
                                searchPressed: () {},
                                searchTextController:
                                    viewModel.searchTextController),
                          ),
                        ),
                        SelectableCategory(
                          categories: FirebaseConstants.categories,
                          selectedCategories: viewModel.selectedCategories,
                          onSelectedCategoryChanged:
                              viewModel.onSelectedCategoryChanged,
                        ),
                        Expanded(
                          child: viewModel.isBusy
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : ListView.builder(
                                  shrinkWrap: true,
                                  primary: false,
                                  itemCount: viewModel.courses.length,
                                  itemBuilder: (context, index) {
                                    var courseItem = viewModel.courses[index];
                                    return CourseCard(
                                      course: courseItem,
                                      onItemPressed: (Course course) {
                                        viewModel.coursePressed(courseItem);
                                      },
                                      backgroundColor: Color(index % 2 == 0
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
              labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFE35629),
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
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}

class SelectableCategory extends StatelessWidget {
  const SelectableCategory(
      {super.key,
      required this.categories,
      required this.selectedCategories,
      required this.onSelectedCategoryChanged});

  final Set<String> categories;
  final Set<String> selectedCategories;
  final ValueChanged<Set<String>> onSelectedCategoryChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 16,
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, right: 10),
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
            child: SizedBox(
              height: 50,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: categories
                    .map((category) => FilterChip(
                          backgroundColor: const Color(0xFF65A9E9),
                          label: Text(
                            '#$category',
                            style: const TextStyle(
                              color: Color(0xFFF2F2F2),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          selectedColor: const Color(0xFF65A9E9),
                          selected: selectedCategories.contains(category),
                          onSelected: (selected) {
                            if (selected) {
                              selectedCategories.add(category);
                            } else {
                              selectedCategories.remove(category);
                            }
                            onSelectedCategoryChanged(selectedCategories);
                          },
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
