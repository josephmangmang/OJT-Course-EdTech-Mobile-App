import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/services/shared_pref_service_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../common/app_constants.dart';

class IntroViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _sharedPrefService = locator<SharedPrefServiceService>();
  final PageController pageController = PageController(initialPage: 0);

  int currentPageIndex = 0;
  String buttonText = AppConstants.nextText;

  void goToLoginPage() {
    _sharedPrefService.setAppIntroGuide();
    _navigationService.replaceWithLoginView();
  }

  void onPageChanged(int index) {
    if (index == 2) {
      changeText();
    }
    if (index < 2) {
      changeTextToNext();
    }
    updateCurrentPageIndex(index);
    print(index);
  }

  void changeText() {
    buttonText = AppConstants.letsStartText;
    rebuildUi();
  }

  void changeTextToNext() {
    buttonText = AppConstants.nextText;
    notifyListeners();
  }

  void updateCurrentPageIndex(int index) {
    currentPageIndex = index;
  }

  void buttonClick() {
    final int currentPageIndex = pageController.page?.round() ?? 0;
    const int lastPageIndex = 2;
    if (currentPageIndex == lastPageIndex) {
      goToLoginPage();
    } else {
      if (currentPageIndex == 1) {
        changeText();
      }
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
