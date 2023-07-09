import 'package:edtechapp/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class IntroViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int currentPageIndex = 0;

  String buttontext = 'Next';
  Color scrollBarColor = const Color(0xFFBEBAB3);
  double scrollBarWidth = 8;
  List<Widget> scrollBars = [];

  void updateScrollBar(int currentPageIndex) {
    scrollBars.clear();
    for (int i = 0; i < 3; i++) {
      if (i != currentPageIndex) {
        scrollBarColor = const Color(0xFFBEBAB3);
        scrollBarWidth = 8;
      } else {
        scrollBarColor = const Color(0xFF65A9E9);
        scrollBarWidth = 20;
      }
      scrollBars.add(ScrollBar(scrollBarWidth, scrollBarColor));
    }
    rebuildUi();
  }

  IntroViewModel() {
    scrollBars = [
      ScrollBar(20, const Color(0xFF65A9E9)),
      ScrollBar(scrollBarWidth, scrollBarColor),
      ScrollBar(scrollBarWidth, scrollBarColor),
    ];
  }

  void goToLoginPage() {
    _navigationService.replaceWithLoginView();
  }

  void changeText() {
    buttontext = 'Let\'s Start';
    rebuildUi();
  }

  void changeTextToNext() {
    buttontext = "Next";
    notifyListeners();
  }

  void updateCurrentPageIndex(int index) {
    index = currentPageIndex;
  }

  Widget ScrollBar(double width, Color color) {
    return Container(
      width: width,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
    );
  }
}
