import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class NoPaymentViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void btnContinuePressed() {
    _navigationService.back();
  }
}
