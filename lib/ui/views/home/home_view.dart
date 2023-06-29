import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:edtechapp/ui/common/app_colors.dart';
import 'package:edtechapp/ui/common/ui_helpers.dart';
import 'package:flutter_svg/svg.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Center(
                child: Column(
                  children: [
                    //verticalSpaceLarge,
                    Container(
                      width: 343,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello,',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Rubik',
                                  letterSpacing: -0.5,
                                  height: 1.7,
                                ),
                              ),
                              Text(
                                'Juana Antonieta',
                                style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Rubik',
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
                                      icon: SvgPicture.asset(
                                          'assets/svg/Notification.svg'),
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
                        width: 343,
                        height: 65,
                        padding: const EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFFBEBAB3)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Expanded(
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Rubik',
                                    height: 2.8),
                                decoration: InputDecoration(
                                    hintText: 'Search course',
                                    border: InputBorder.none),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                      'assets/svg/Search Icon.svg',
                                    ),
                                    iconSize: 24,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Category:'),
                        ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(54, 24)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(47, 24)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(62, 24)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(43, 24)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
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
                    Column(
                      children: [
                        buildCard(
                            image: 'assets/png/Cool Kids Discussion.png',
                            price: "\$50",
                            hour: "3 h 30 min ",
                            title: "UI",
                            description: "Advanced mobile interface design",
                            color: 0xFFF7F2EE),
                        const SizedBox(height: 12),
                        buildCard(
                            image: 'assets/png/Cool Kids Alone Time.png',
                            price: "\$50",
                            hour: "3 h 30 min ",
                            title: "UI",
                            description: "Advanced web applications",
                            color: 0xFFBEBAB3),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: 375,
          height: 98,
          padding: const EdgeInsets.only(top: 8),
          clipBehavior: Clip.antiAlias,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.50, color: Color(0xFFBEBAB3)),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
          child: BottomNavigationBar(
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
          ),
        ),
      ),
    );
  }

  Widget buildCard(
          {required String image,
          required String price,
          required String hour,
          required String description,
          required String title,
          required int color}) =>
      ClipRRect(
        child: Column(
          children: [
            Container(
              width: 343,
              height: 194,
              color: Color(color),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image),
                  Container(
                    width: 343,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(flex: 21),
                        ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(63, 24)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as per your needs
                              ),
                            ),
                          ),
                          onPressed: () {
                            // Button press event
                          },
                          child: Text(price),
                        ),
                        Spacer(flex: 1)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 343,
              height: 103,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(hour,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(description,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
