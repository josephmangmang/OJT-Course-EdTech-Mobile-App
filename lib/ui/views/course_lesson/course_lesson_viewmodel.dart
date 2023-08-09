import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../model/topic.dart';

class CourseLessonViewModel extends BaseViewModel {
  final PageController pageController = PageController(initialPage: 0);

  int currentPageIndex = 0;
  late YoutubePlayerController controller;

  void init() {
    setBusy(true);
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(topic.video)!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    setBusy(false);
  }


  CourseLessonViewModel(
    this.topic,
  );

  final Topic topic;

  void onPageChanged(int index) {
    currentPageIndex = index;
    rebuildUi();
  }

  void changePage(int index) {
    currentPageIndex = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    rebuildUi();
  }
}
