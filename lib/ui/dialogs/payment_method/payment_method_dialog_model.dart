import 'package:edtechapp/ui/common/busy_object_constants.dart';
import 'package:edtechapp/ui/common/payment_method_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/credit_card.dart';
import '../../../resources/png_images.dart';
import '../../../services/repository_service.dart';
import '../../common/app_constants.dart';

class PaymentMethodDialogModel extends BaseViewModel {
  String image = '';
  int selectedCardIndex = 0;
  late List<CreditCard> creditCard;
  final _repositoryService = locator<RepositoryService>();

  init() async {
    loadYourCards();
    cardType();
  }

  cardType() {
    setBusyForObject(BusyObjectConstants.cardTypeText, true);
    for (var card in creditCard) {
      if (card.paymentMethod == PaymentMethodConstants.masterCardText) {
        image = PngImages.mastercard;
      } else if (card.paymentMethod == PaymentMethodConstants.visaText) {
        image = PngImages.visa;
      }
    }
    setBusyForObject(BusyObjectConstants.cardTypeText, false);
    rebuildUi();
  }

  loadYourCards() async {
    setBusyForObject(BusyObjectConstants.yourCardText, true);
    _repositoryService.getCreditCard().then((value) {
      creditCard = value;
      setBusyForObject(BusyObjectConstants.yourCardText, false);
    });
  }

  void deletePaymentMethod() async {
    CreditCard selectedCreditCard = creditCard[selectedCardIndex];
      setBusy(true);
      final response =
      await _repositoryService.deleteCreditCard(selectedCreditCard.id);
      setBusy(false);
      response.fold(
              (l) => SnackbarService().showSnackbar(
              message: l.message, duration: const Duration(seconds: 2)), (r) {
        SnackbarService().showSnackbar(
            message: AppConstants.deletedSuccessfullyText, duration: const Duration(seconds: 2)
        );
        init();
      });
    }

  void setSelectedIndex(int index) async {
    selectedCardIndex = index;

    rebuildUi();
  }

  }



