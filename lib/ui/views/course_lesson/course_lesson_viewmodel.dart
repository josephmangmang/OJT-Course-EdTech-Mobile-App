import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../model/topic.dart';

class CourseLessonViewModel extends BaseViewModel {
  final PageController pageController = PageController(initialPage: 0);


  int currentPageIndex = 0;

  CourseLessonViewModel(this.topic,);

  final Topic topic;

  void onPageChanged(int index) {
    currentPageIndex = index;
    rebuildUi();
  }

  void changePage(int index) {
    currentPageIndex = index;
    pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    rebuildUi();
  }
}
