import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:edtechapp/ui/custom_widget/topic_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../model/course.dart';
import 'lesson_courses_viewmodel.dart';

class LessonCoursesView extends StackedView<LessonCoursesViewModel> {
  const LessonCoursesView(this.course, {Key? key}) : super(key: key);

  final Course course;

  @override
  Widget builder(
    BuildContext context,
    LessonCoursesViewModel viewModel,
    Widget? child,
  ) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
            controller: viewModel.controller,
            onEnded: (metadata) {
              viewModel.onVideoEnd();
            },
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.red,
            progressColors: const ProgressBarColors(
              playedColor: Colors.red,
            ),
        ),
        builder: (context, player) {
          return Scaffold(
            body: viewModel.isBusy
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SafeArea(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              child: CustomAppBar(
                                title: course.title,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 16),
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFFCDCDCD), width: 1.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: course.video == null
                                        ? Image.asset(
                                            PngImages
                                                .coolKidsLongDistanceRelationship1,
                                          )
                                        : player
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    margin: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          course.title,
                                          style: const TextStyle(
                                            color: Color(0xFF3B3936),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: -0.50,
                                          ),
                                        ),
                                        Text(
                                          course.subtitle,
                                          style: const TextStyle(
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
                            ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: viewModel.topics.length,
                              itemBuilder: (context, index) {
                                var topicItem = viewModel.topics[index];
                                return TopicCard(
                                  topic: topicItem,
                                  maxProgress: viewModel.topicProgress.isEmpty
                                      ? 10
                                      : viewModel
                                          .topicProgress[index].totalProgress,
                                  currentProgress:
                                      viewModel.topicProgress.isEmpty
                                          ? 0
                                          : viewModel.topicProgress[index]
                                              .currentProgress,
                                  onCardPressed: () => viewModel.topicCardClick(
                                      topicItem,
                                      "${index + 1} of ${viewModel.topics.length} lessons"),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
          );
        });
  }

  @override
  LessonCoursesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LessonCoursesViewModel(course);

  @override
  void onViewModelReady(LessonCoursesViewModel viewModel) {
    viewModel.init();
  }
}
