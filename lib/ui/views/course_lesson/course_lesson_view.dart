import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
import 'course_lesson_viewmodel.dart';

class CourseLessonView extends StackedView<CourseLessonViewModel> {
  const CourseLessonView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CourseLessonViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Center(
              child: Column(
                children: [
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
                  Container(
                    width: 343,
                    height: 138,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6EDF4),
                      image: const DecorationImage(
                        image: AssetImage(
                            "assets/png/Cool Kids Long Distance Relationship.png"),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    width: 343,
                    height: 56,
                    padding: const EdgeInsets.only(right: 8, bottom: 8),
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6EDF4),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/Play Icon.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    width: 343,
                    padding: const EdgeInsets.only(top: 16, bottom: 8),
                    child: const Text(
                      'Introduction',
                      style: TextStyle(
                        color: Color(0xFF3B3936),
                        fontSize: 20,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                  Container(
                    width: 343,
                    padding: const EdgeInsets.only(top: 4, bottom: 8),
                    child: const Text(
                      "You can launch a new career in web develop-\nment today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, \na lot of determination, and a teacher you trust.\nOnce the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we're ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.\n\n",
                      style: TextStyle(
                        color: Color(0xFF78746D),
                        fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  CourseLessonViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CourseLessonViewModel();
}
