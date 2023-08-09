import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class PaymentAddedViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void paymentMethod() {
    _navigationService.replaceWithPaymentCheckoutView();
  }
}
