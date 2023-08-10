import 'package:edtechapp/app/app.dart';
import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'intro_viewmodel.dart';

class IntroPage extends StackedView<IntroViewModel> {
  IntroPage({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    IntroViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: viewModel.goToLoginPage,
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    AppConstants.skipText,
                    style: TextStyle(
                      color: Color(0xFF78746D),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: viewModel.pageController,
                physics: const AlwaysScrollableScrollPhysics(),
                onPageChanged: viewModel.onPageChanged,
                children: const [
                  PageViewContent(
                    image: PngImages.coolKidsLongDistanceRelationship1,
                    title: AppConstants.intro1TitleText,
                  ),
                  PageViewContent(
                    image: PngImages.coolKidsStayingHome,
                    title: AppConstants.intro2TitleText,
                  ),
                  PageViewContent(
                    image: PngImages.coolKidsHighTech1,
                    title: AppConstants.intro3TitleText,
                  ),
                ],
              ),
            ),

            Container(
              alignment: Alignment.topCenter,
              height: 6,
              width: 52,
              margin: const EdgeInsets.only(top: 16, bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PageViewBar(
                    index: 0,
                    currentIndex: viewModel.currentPageIndex,
                  ),
                  PageViewBar(
                    index: 1,
                    currentIndex: viewModel.currentPageIndex,
                  ),
                  PageViewBar(
                    index: 2,
                    currentIndex: viewModel.currentPageIndex,
                  ),
                ],
              ),
            ),
            AppButton(
              title: viewModel.buttonText,
              onClick: viewModel.buttonClick,
            ),
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

class PageViewContent extends StatelessWidget {
  const PageViewContent({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 16),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF3B3936),
            fontSize: 24,
            fontWeight: FontWeight.w500,
            height: 1.33,
            letterSpacing: -0.50,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
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
    );
  }
}

class PageViewBar extends StatelessWidget {
  const PageViewBar(
      {super.key, required this.index, required this.currentIndex});

  final int index;
  final int currentIndex;
  final _isCurrentIndex = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: checkCurrentIndex() ? 16 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: checkCurrentIndex()
          ? const Color(0xFF65A9E9)
          : const Color(0xFFD5D4D4),
      borderRadius: BorderRadius.circular(50),
      ),
    );
  }

  bool checkCurrentIndex() {
    if (currentIndex == index) {
      return true;
    }
    return false;
  }
}
