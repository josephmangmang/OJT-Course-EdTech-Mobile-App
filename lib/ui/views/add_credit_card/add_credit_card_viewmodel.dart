import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/model/credit_card.dart';
import 'package:edtechapp/ui/common/app_temp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/repository_service.dart';

class AddCreditCardViewModel extends BaseViewModel {
  TextEditingController nameController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expireDate = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  String selectedPaymentMethod = "";
  bool existingCreditCard = false;
  final _navigationService = locator<NavigationService>();
  final _repositoryService = locator<RepositoryService>();
  final _snackBarService = locator<SnackbarService>();
  DateTime? selectedDate;

  late CreditCard creditCard;
  init() async {
    loadExistingCreditCard();
  }
  void selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      expireDate.clear();
      expireDate.text = DateFormat('MM/yy').format(pickedDate);
    }
  }

  Future<void> save(int paymentMethod) async {
    setBusy(true);
    if (paymentMethod == 0) {
      selectedPaymentMethod = "MasterCard";
    } else {
      selectedPaymentMethod = "VisaCard";
    }
    final response = await _repositoryService.addCreditCard(
        nameController.text,
        cardNumberController.text,
        expireDate.text,
        cvvController.text,
        selectedPaymentMethod);
    setBusy(false);
    response.fold((l) {
      _snackBarService.showSnackbar(message: l.message);
    }, (r) async {
      _navigationService.navigateToPaymentCheckoutView();
    });
  }

  loadExistingCreditCard() async {
    setBusy(true);
    final response = await _repositoryService.getCreditCard();
    response.fold((l) {
      l.message;
    }, (r) => creditCard = r);
    nameController.text = creditCard.name;
    cardNumberController.text = creditCard.cardNumber;
    expireDate.text = creditCard.expireDate;
    cvvController.text = creditCard.cvv;
    print(response);
    setBusy(false);
  }
}
