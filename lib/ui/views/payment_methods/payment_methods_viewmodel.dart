import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/resources/png_images.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../model/credit_card.dart';
import '../../../services/repository_service.dart';
import '../add_credit_card/add_credit_card_view.dart';

class PaymentMethodsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _snackBarService = locator<SnackbarService>();
  final _repositoryService = locator<RepositoryService>();
  String image = '';
  bool isMasterCardClicked = false;
  bool isVisaCardClicked = false;
  bool isAddCreditCardClicked = false;
  bool isOldPaymentMethodVisaCardClick = false;
  bool isOldPaymentMethodMasterCardClick = false;
  int selectedCardIndex = -1;
  late List<CreditCard> creditCard = [];
  init() async {
    loadYourCards();
    cardType();
  }

  void onMasterCardClick() {
    isMasterCardClicked = true;
    isVisaCardClicked = false;
    isAddCreditCardClicked = false;
    rebuildUi();
  }

  void onAddCreditCardClick() {
    isAddCreditCardClicked = true;
    isMasterCardClicked = false;
    isVisaCardClicked = false;
    rebuildUi();
  }

  void onVisaCardClick() {
    isVisaCardClicked = true;
    isMasterCardClicked = false;
    isAddCreditCardClicked = false;
    rebuildUi();
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

  void onContinuePressed() async {
    if (selectedCardIndex == -1 && isAddCreditCardClicked != true && isVisaCardClicked != true && isMasterCardClicked != true) {
    _navigationService.navigateToNoPaymentView();
    return;
    }
    if (isAddCreditCardClicked == true) {
      await _navigationService.navigateToAddCreditCardView(
          oldPaymentMethod: false,
          name: "",
          cardNumber: "",
          cvv: "",
          expireDate: "",
          cardId: "",
          paymentMethod: "");
      loadYourCards();
    }
    CreditCard selectedCreditCard = creditCard[selectedCardIndex];
    if (isMasterCardClicked != true &&
        isVisaCardClicked != true &&
        isAddCreditCardClicked != true) {
      _navigationService.navigateToNoPaymentView();
    } else if (isMasterCardClicked == true || isVisaCardClicked == true) {
      await _navigationService.navigateToAddCreditCardView(
          oldPaymentMethod: true,
          name: selectedCreditCard.name,
          cardNumber: selectedCreditCard.cardNumber,
          cvv: selectedCreditCard.cvv,
          expireDate: selectedCreditCard.expireDate,
          cardId: selectedCreditCard.id,
          paymentMethod: selectedCreditCard.paymentMethod);
      loadYourCards();
    } else {
      await _navigationService.navigateToAddCreditCardView(
          oldPaymentMethod: false,
          name: "",
          cardNumber: "",
          cvv: "",
          expireDate: "",
          cardId: "",
          paymentMethod: "");
      loadYourCards();
    }
  }

  loadYourCards() async {
    setBusyForObject('yourCard', true);
    _repositoryService.getCreditCard().then((value) {
      creditCard = value;

      setBusyForObject('yourCard', false);
    });
  }

  void setSelectedIndex(int index) {
    selectedCardIndex = index;
    isAddCreditCardClicked = false;

    String selectedPaymentMethod = creditCard[index].paymentMethod;

    isMasterCardClicked = selectedPaymentMethod == "mastercard";
    isVisaCardClicked = selectedPaymentMethod == "visa";

    rebuildUi();
  }
}
