import 'package:edtechapp/app/app.router.dart';
import 'package:edtechapp/model/credit_card.dart';
import 'package:edtechapp/resources/png_images.dart';
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
  TextEditingController expireDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  String cardType = "";
  String selectedPaymentMethod = "";
  bool existingCreditCard = false;
  bool isMasterCardClick = false;
  bool isVisaCardClick = false;
  final _navigationService = locator<NavigationService>();
  final _repositoryService = locator<RepositoryService>();
  final _snackBarService = locator<SnackbarService>();
  DateTime? selectedDate;


  init(bool oldPaymentMethod, String name, String cardNumber, String expireDate, String cvv, String paymentMethod) async {
      loadExistingCreditCard(name, cardNumber, expireDate, cvv, paymentMethod);
      if (paymentMethod == "mastercard") {
        cardType = PngImages.mastercard;
      } else if (paymentMethod == "visa") {
        cardType = PngImages.visa;
      }
  }

  void selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      expireDateController.clear();
      expireDateController.text = DateFormat('MM/yy').format(pickedDate);
    }
  }

  Future<void> save(String cardId) async {
    setBusy(true);
    if(cardId.isNotEmpty) {
      final response = await _repositoryService.editCreditCard(
        nameController.text,
        cardNumberController.text,
        expireDateController.text,
        cvvController.text,
        selectedPaymentMethod,
        cardId
      );

      setBusy(false);
      response.fold((l) {
        _snackBarService.showSnackbar(message: l.message);
      }, (r) async {
        _snackBarService.showSnackbar(message: "Save Successfully", duration: const Duration(seconds: 2));
        _navigationService.navigateToPaymentAddedView();
      });
    } else {
      final response = await _repositoryService.addCreditCard(
        nameController.text,
        cardNumberController.text,
        expireDateController.text,
        cvvController.text,
        selectedPaymentMethod,
      );
      setBusy(false);
      response.fold((l) {
        _snackBarService.showSnackbar(message: l.message);
      }, (r) async {
        _snackBarService.showSnackbar(message: "Save Successfully", duration: const Duration(seconds: 2));
        _navigationService.navigateToPaymentAddedView();
      });
    }


  }

  loadExistingCreditCard(String name, String cardNumber, String expireDate, String cvv, String paymentMethod) async {
    setBusyForObject('creditCard',true);
    nameController.text = name;
    cardNumberController.text = cardNumber;
    expireDateController.text = expireDate;
    cvvController.text = cvv;
    selectedPaymentMethod = paymentMethod;
    setBusyForObject('creditCard',false);
  }

  void paymentMethodDetector(String value) async {
    setBusyForObject('cardType', true);
    if (value.startsWith(RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      cardType = PngImages.mastercard;
      selectedPaymentMethod = "mastercard";
    } else if (value.startsWith(RegExp(r'[4]'))) {
      cardType = PngImages.visa;
      selectedPaymentMethod = "visa";
    }
    else {
      cardType = const Icon(Icons.warning) as String;
    }
    setBusyForObject('cardType', false);
    rebuildUi();
  }
}
