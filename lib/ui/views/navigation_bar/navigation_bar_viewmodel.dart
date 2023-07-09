import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class NavigationBarViewModel extends BaseViewModel {
final _navigatorService = locator<NavigationService>();

  get selectedIndex => null;

  void yourCourse() {
    _navigatorService.replaceWithYourCoursesView();
  }

  void profile() {
    _navigatorService.replaceWithProfileView();
  }

  void settings() {
    _navigatorService.replaceWithSettingsView();
  }

  void setTabIndex(int index) {}

}
