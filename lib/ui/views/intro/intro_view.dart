import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
                                  image: AssetImage(PngImages
                                      .coolKidsLongDistanceRelationship1),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            const SizedBox(
                              width: 375,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    AppConstants.intro1TitleText,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF3B3936),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      height: 1.33,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    AppConstants.introDescriptionText,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF78746D),
                                      fontSize: 14,
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
                                  image:
                                      AssetImage(PngImages.coolKidsStayingHome),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            const SizedBox(
                              width: 375,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    AppConstants.intro2TitleText,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF3B3936),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      height: 1.33,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    AppConstants.introDescriptionText,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF78746D),
                                      fontSize: 14,
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
                                  image:
                                      AssetImage(PngImages.coolKidsHighTech1),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            const SizedBox(
                              width: 375,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    AppConstants.intro3TitleText,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF3B3936),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      height: 1.33,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    AppConstants.introDescriptionText,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF78746D),
                                      fontSize: 14,
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
                  AppConstants.skipText,
                  style: TextStyle(
                    color: Color(0xFF78746D),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.14,
                  ),
                ),
              ),
            ),
            Positioned(
                left: 50,
                right: 30,
                top: 695,
                bottom: 25,
                child: AppButton(
                  title: viewModel.buttonText,
                  onClick: () {
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
                  },
                )),
          ],
        ),
      ),
    );
  }

  @override
  IntroViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      IntroViewModel();
}
