import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'lesson_courses_viewmodel.dart';

class LessonCoursesView extends StackedView<LessonCoursesViewModel> {
  const LessonCoursesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LessonCoursesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.only(right: 56 - 16),
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
                          'HTML',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5,
                            color: Color(0xFF3B3936),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFFCDCDCD), width: 1.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Container(
                        color: const Color(0xFFFFF5EE),
                        child: Column(
                          children: [
                            Image.asset(
                                'assets/png/Cool Kids Long Distance Relationship.png'),
                            Container(
                              padding: const EdgeInsets.only(
                                  right: 8, left: 16, bottom: 8),
                              alignment: Alignment.centerRight,
                              child:
                                  SvgPicture.asset('assets/svg/Play Icon.svg'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.all(16),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'HTML',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.50,
                              ),
                            ),
                            SizedBox(),
                            Text(
                              'Advanced web applications',
                              style: TextStyle(
                                color: Color(0xFF78746D),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                buildCard(
                  image: 'assets/png/Cool Kids Study.png',
                  txt: 'Main Tags',
                  progressImage: 'assets/svg/Progress Bars.svg',
                ),
                buildCard(
                  image: 'assets/png/Cool Kids On Wheels (1).png',
                  txt: 'Tags For Header',
                  progressImage: 'assets/svg/Progress Bars (1).svg',
                ),
                buildCard(
                  image: 'assets/png/Cool Kids Study.png',
                  txt: 'Style Tags',
                  progressImage: 'assets/svg/Progress Bars (1).svg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  LessonCoursesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LessonCoursesViewModel();
}

Widget buildCard({
  required String image,
  required String txt,
  required String progressImage,
}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    margin: const EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: const Color(0xFFCDCDCD),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(image),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              txt,
              style: const TextStyle(
                color: Color(0xFF3B3936),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.50,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SvgPicture.asset(progressImage),
          ],
        )
      ],
    ),
  );
}
