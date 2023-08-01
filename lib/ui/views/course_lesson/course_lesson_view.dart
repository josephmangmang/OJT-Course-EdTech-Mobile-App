import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:edtechapp/ui/custom_widget/youtube_player.dart';
import 'package:edtechapp/ui/views/course_test/course_test_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../model/course.dart';
import '../../../model/topic.dart';
import 'course_lesson_viewmodel.dart';

class CourseLessonView extends StackedView<CourseLessonViewModel> {
  const CourseLessonView(this.topic, this.lessonCount, this.course, {Key? key})
      : super(key: key);

  final Topic topic;
  final Course course;
  final String lessonCount;

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
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomAppBar(
                      title: course.title,
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
                        Text(
                          topic.topic,
                          style: const TextStyle(
                            color: Color(0xFF3B3936),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.50,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            lessonCount,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFF78746D),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () => viewModel.changePage(0),
                                  child: AbsorbPointer(
                                    child: Container(
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
                                      child: Text(
                                        AppConstants.lessonText,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: viewModel.currentPageIndex == 0
                                              ? const Color(0xFF3B3936)
                                              : const Color(0xFF78746D),
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () => viewModel.changePage(1),
                                  child: Container(
                                    height: 42,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 33, vertical: 8),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFFF7F2EE)),
                                    child: SizedBox(
                                      height: double.infinity,
                                      child: Text(
                                        AppConstants.testText,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: viewModel.currentPageIndex == 1
                                              ? const Color(0xFF3B3936)
                                              : const Color(0xFF78746D),
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.50,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Container(
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
                                      AppConstants.discussText,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF78746D),
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.50,
                                      ),
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
                  Expanded(
                    child: PageView(
                      controller: viewModel.pageController,
                      physics: const AlwaysScrollableScrollPhysics(),
                      onPageChanged: viewModel.onPageChanged,
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                width: double.infinity,
                                height: 194,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: AppYoutubePlayer(
                                  video: topic.video,
                                ),
                              ),
                              Container(
                                width: 343,
                                padding:
                                    const EdgeInsets.only(top: 16, bottom: 8),
                                child: const Text(
                                  AppConstants.introText,
                                  style: TextStyle(
                                    color: Color(0xFF3B3936),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.50,
                                  ),
                                ),
                              ),
                              Container(
                                width: 343,
                                padding:
                                    const EdgeInsets.only(top: 4, bottom: 8),
                                child: Text(
                                  topic.intro,
                                  style: const TextStyle(
                                    color: Color(0xFF78746D),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        CourseTestView(topic, course),
                      ],
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
      CourseLessonViewModel(
        topic,
      );
}
