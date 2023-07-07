import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'intro_viewmodel.dart';

class IntroPage extends StackedView<IntroViewModel> {
  IntroPage({Key? key}) : super(key: key);

  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget builder(
    BuildContext context,
    IntroViewModel viewModel,
    Widget? child,
  ) {
    
    return ViewModelBuilder<IntroViewModel>.reactive(
      viewModelBuilder: () => IntroViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              width: 375,
              height: 812,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  PageView(
                    controller: pageController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    onPageChanged: (int index) {
                      if (index == 2) {
                        viewModel.changeText();
                      }
                      viewModel.updateCurrentPageIndex(index);

                      if (index < 2) {
                        viewModel.changeTextToNext();
                      }
                      viewModel.updateCurrentPageIndex(index);
                      viewModel.updateScrollBar(index);
                    },
                    children: [
                      Container(
                        width: 375,
                        height: 812,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 188,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 375,
                                    height: 264,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/png/Cool_Kids_Long_Distance_Relationship.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const SizedBox(
                                    width: 375,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Learn anytime \nand anywhere',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF3B3936),
                                            fontSize: 24,
                                            fontFamily: 'Rubik',
                                            fontWeight: FontWeight.w500,
                                            height: 1.33,
                                            letterSpacing: -0.50,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Quarantine is the perfect time to spend your\n day learning something new, from anywhere!\n\n',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF78746D),
                                            fontSize: 14,
                                            fontFamily: 'Rubik',
                                            fontWeight: FontWeight.w400,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 812,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 188,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 375,
                                    height: 264,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/png/Cool_Kids_Staying_Home.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const SizedBox(
                                    width: 375,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Find a Course \nfor you',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF3B3936),
                                            fontSize: 24,
                                            fontFamily: 'Rubik',
                                            fontWeight: FontWeight.w500,
                                            height: 1.33,
                                            letterSpacing: -0.50,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Quarantine is the perfect time to spend your\n day learning something new, from anywhere!\n\n',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF78746D),
                                            fontSize: 14,
                                            fontFamily: 'Rubik',
                                            fontWeight: FontWeight.w400,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 375,
                        height: 812,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 188,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 375,
                                    height: 264,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/png/Cool_Kids_High_Tech.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const SizedBox(
                                    width: 375,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Improve your skills',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF3B3936),
                                            fontSize: 24,
                                            fontFamily: 'Rubik',
                                            fontWeight: FontWeight.w500,
                                            height: 1.33,
                                            letterSpacing: -0.50,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Quarantine is the perfect time to spend your\n day learning something new, from anywhere!\n\n',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF78746D),
                                            fontSize: 14,
                                            fontFamily: 'Rubik',
                                            fontWeight: FontWeight.w400,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    right: 10,
                    top: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        viewModel.goToLoginPage();
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(16),
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xFF78746D),
                          fontSize: 14,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                          height: 1.14,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 32,
                    right: 32,
                    bottom: 80,
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: viewModel.scrollBars
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // ignore: non_constant_identifier_names
                              final int currentPageIndex =
                                  pageController.page?.round() ?? 0;
                              const int lastPageIndex = 2;
                              if (currentPageIndex == lastPageIndex) {
                                // Navigate to the home page
                                viewModel.goToLoginPage();
                              } else {
                                if (currentPageIndex == 1) {
                                  viewModel.changeText();
                                }
                                // Move to the next page
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                              viewModel.updateScrollBar(currentPageIndex); 
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              backgroundColor: const Color(0xFFE35629),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Text(
                              viewModel.buttontext,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    
  }


  @override
  IntroViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      IntroViewModel();
}
