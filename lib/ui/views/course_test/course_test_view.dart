import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
import 'course_test_viewmodel.dart';

class CourseTestView extends StackedView<CourseTestViewModel> {
  const CourseTestView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CourseTestViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Center(
                child: Column(children: [
                  //verticalSpaceLarge,
                  Container(
                    width: 343,
                    child: Row(
                      children: [
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
                                        'assets/svg/Go-back.svg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 263,
                              height: 32,
                              alignment: Alignment.center,
                              child: const Text(
                                'HTML',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.50,
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
                    height: 127,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Tags For Headers',
                          style: TextStyle(
                            color: Color(0xFF3B3936),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.50,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8),
                          child: const Text(
                            '3 of 11 lessons',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF78746D),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 114,
                                height: 42,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 8),
                                clipBehavior: Clip.antiAlias,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFF7F2EE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Lessons',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF3B3936),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.50,
                                  ),
                                ),
                              ),
                              Container(
                                width: 114,
                                height: 42,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 33, vertical: 8),
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                    color: Color(0xFFF7F2EE)),
                                child: const SizedBox(
                                  height: double.infinity,
                                  child: Text(
                                    'Tests',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF78746D),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 114,
                                height: 42,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 8),
                                clipBehavior: Clip.antiAlias,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFFF7F2EE),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                    ),
                                  ),
                                ),
                                child: const SizedBox(
                                  height: double.infinity,
                                  child: Text(
                                    'Discuss',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF78746D),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildCard(
                      image: 'assets/png/Cool Kids On Wheels.png',
                      quiz: 'Quiz 1',
                      description:
                          'Lets put your memory on this topic test. Solve task and check your knowledge',
                      title: 'Tag For Headers',
                      color: 0xFFFFFFFF),
                  Container(
                    height: 16,
                  ),
                  buildCard(
                      image: 'assets/png/Cool Kids On Wheels.png',
                      quiz: 'Quiz 1',
                      description:
                          'Lets put your memory on this topic test. Solve task and check your knowledge',
                      title: 'Tag For Headers',
                      color: 0xFFFFFFFF),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(
      {required String image,
      required String quiz,
      required String description,
      required String title,
      required int color}) {
    return Container(
      width: 343,
      height: 463,
      padding: const EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
        bottom: 32,
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Color(0xFFBEBAB3),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 24),
              child: Image.asset(image)),
          Container(
            alignment: Alignment.topLeft,
            width: 295,
            height: 122,
            padding: const EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    quiz,
                    style: const TextStyle(
                      color: Color(0xFFE35629),
                      fontSize: 14,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 20,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xFF78746D),
                      fontSize: 14,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 295,
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFE35629)),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Text(
              'Begin',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF3B3936),
                fontSize: 14,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  CourseTestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CourseTestViewModel();
}
