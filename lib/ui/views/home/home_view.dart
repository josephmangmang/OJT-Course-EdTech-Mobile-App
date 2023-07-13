import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtechapp/ui/views/your_courses/your_courses_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
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
      onViewModelReady: (model) => model.getData(),
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
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  viewModel.user!.name,
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
                                                    border: Border.all(color: Colors.grey),
                                                  ),
                                                  child: ClipOval(
                                                    child: SizedBox(
                                                      height: 48,
                                                      width: 48,
                                                      child: IconButton(
                                                        onPressed: () {},
                                                        icon: SvgPicture.asset('assets/svg/notification.svg'),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: TextField(
                                          controller: viewModel.searchTextController,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  width: 1,
                                                  color: Color(0xFFBEBAB3),
                                                ),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                             
                                              suffixIcon: Transform.scale(
                                                  scale: 0.6, child: IconButton(
                                                    onPressed: viewModel.searchCourse,
                                                    icon: SvgPicture.asset('assets/svg/Search Icon.svg')))),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Text('Category:'),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              minimumSize: MaterialStateProperty.all<Size>(const Size(54, 24)),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      10.0), // Adjust the radius as per your needs
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              // Button press event
                                            },
                                            child: const Text('#CSS'),
                                          ),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              minimumSize: MaterialStateProperty.all<Size>(const Size(47, 24)),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      10.0), // Adjust the radius as per your needs
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              // Button press event
                                            },
                                            child: const Text('#UX'),
                                          ),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              minimumSize: MaterialStateProperty.all<Size>(const Size(62, 24)),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      10.0), // Adjust the radius as per your needs
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              // Button press event
                                            },
                                            child: const Text('#Swift'),
                                          ),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              minimumSize: MaterialStateProperty.all<Size>(const Size(43, 24)),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      10.0), // Adjust the radius as per your needs
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              // Button press event
                                            },
                                            child: const Text('#UI'),
                                          ),
                                        ],
                                      ),
                                      ListView.builder(
                                        shrinkWrap: true,
                                        primary: false,
                                        itemCount: viewModel.listOfCourse.length,
                                        itemBuilder: (context, index) {
                                          var courseItem = viewModel.listOfCourse[index];
                                          return buildCard(
                                            description: courseItem.subtitle,
                                            title: courseItem.title,
                                            price: courseItem.price,
                                            color: viewModel.getColor(index),
                                            hour: courseItem.duration,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const ProfileView(),
                          const SettingsView(),
                        ],
                      ),
                    ),
                    NavigationBarTheme(
                      data: NavigationBarThemeData(
                        indicatorColor: Colors.white,
                        labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>((Set<MaterialState> states) {
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
                                'assets/svg/courses.svg',
                              ),
                              selectedIcon: SvgPicture.asset(
                                'assets/svg/courses.svg',
                                color: Colors.orange,
                              ),
                              label: 'Courses'),
                          NavigationDestination(
                            icon: SvgPicture.asset(
                              'assets/svg/Profile Icon.svg',
                            ),
                            selectedIcon: SvgPicture.asset(
                              'assets/svg/Profile Icon.svg',
                              color: Colors.orange,
                            ),
                            label: 'Profile',
                          ),
                          NavigationDestination(
                            icon: SvgPicture.asset(
                              'assets/svg/Frame 4.svg',
                            ),
                            selectedIcon: SvgPicture.asset(
                              'assets/svg/Frame 4.svg',
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

  Widget buildCard({
    required double price,
    required String hour,
    required String description,
    required String title,
    required int color,
  }) {
    return ListTile(
      title: Container(
        padding: const EdgeInsets.all(3),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 0.50,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Color(0xFFBEBAB3),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Color(color),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/png/Cool Kids Discussion.png'),
                  SizedBox(
                    width: 343,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 21),
                        ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                              const Size(63, 24),
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0), // Adjust the radius as per your needs
                              ),
                            ),
                          ),
                          onPressed: () {
                            // Button press event
                          },
                          child: Text("$price"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        hour,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5BA092),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
