import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class AppbarViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final String title = "";
  void back() {
    _navigationService.back();
  }
}
