import 'package:edtechapp/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/repository_service.dart';

class AddCreditCardViewModel extends BaseViewModel {
  final nameController = TextEditingController();
  final cardNumberController = TextEditingController();
  final expireDate = TextEditingController();
  final cvvController = TextEditingController();
  String selectedPaymentMethod = "";
  final _navigationService = locator<NavigationService>();
  final _repositoryService = locator<RepositoryService>();
  final _snackBarService = locator<SnackbarService>();
  DateTime? selectedDate;

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
      _snackBarService.showSnackbar(message: r.toString());
      _navigationService.replaceWithHomeView();
    });
  }
}
