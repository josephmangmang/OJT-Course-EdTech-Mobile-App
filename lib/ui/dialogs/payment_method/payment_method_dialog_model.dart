import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/credit_card.dart';
import '../../../resources/png_images.dart';
import '../../../services/repository_service.dart';

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
    setBusyForObject('cardType', true);
    for (var card in creditCard) {
      if (card.paymentMethod == "mastercard") {
        image = PngImages.mastercard;
      } else if (card.paymentMethod == "visa") {
        image = PngImages.visa;
      }
    }
    setBusyForObject('cardType', false);
    rebuildUi();
  }

  loadYourCards() async {
    setBusyForObject('yourCard', true);
    _repositoryService.getCreditCard().then((value) {
      creditCard = value;
      setBusyForObject('yourCard', false);
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
            message: 'Delete Successfully', duration: const Duration(seconds: 2)
        );
        init();
      });
    }

  void setSelectedIndex(int index) async {
    selectedCardIndex = index;

    rebuildUi();
  }

  }



