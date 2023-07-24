import 'package:edtechapp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/credit_card.dart';
import '../../../services/repository_service.dart';
import '../add_credit_card/add_credit_card_view.dart';

class PaymentMethodsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _repository= locator<RepositoryService>();
  bool isMasterCardClicked = false;
  bool isVisaCardClicked = false;
  bool existPaymentMethod = false;
  CreditCard? creditCard;

  init() async {
    setBusy(true);
    await _repository.getCreditCard().then((value) {
      if (value.isNotEmpty) {
        existPaymentMethod = false;
      }
    });
    setBusy(false);
  }

  void onMasterCardClick() {
    isMasterCardClicked = true;
    isVisaCardClicked = false;
    rebuildUi();
  }

  void onVisaCardClick() {
    isVisaCardClicked = true;
    isMasterCardClicked = false;
    rebuildUi();
  }

  void onContinuePressed(int paymentMethod) {
    if (isMasterCardClicked != true && isVisaCardClicked != true) {
      _snackBarService.showSnackbar(message: "Select Payment Method");
    } else {
      _navigationService.navigateToAddCreditCardView(
          paymentMethod: paymentMethod);
    }
  }
}
