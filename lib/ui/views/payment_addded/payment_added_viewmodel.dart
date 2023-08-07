import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class PaymentAdddedViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();


  void backPressed() {
    _navigationService.back();
  }

  void paymentMethod() {
    _navigationService.replaceWithPaymentCheckoutView();
  }
}
