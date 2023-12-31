import 'package:edtechapp/ui/common/busy_object_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_constants.dart';
import 'add_credit_card_viewmodel.dart';

class AddCreditCardView extends StackedView<AddCreditCardViewModel> {
  final bool oldPaymentMethod;
  final String name;
  final String cardNumber;
  final String expireDate;
  final String cvv;
  final String paymentMethod;
  final String cardId;

  const AddCreditCardView(this.oldPaymentMethod, this.name, this.cardNumber,
      this.expireDate, this.cvv, this.cardId, this.paymentMethod,
      {Key? key})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddCreditCardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: viewModel.busy(BusyObjectConstants.creditCardText)
            ? const Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomAppBar(title: AppConstants.paymentText),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      oldPaymentMethod ? AppConstants.editCreditCardText : AppConstants.addCreditCardText,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.50,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      controller: viewModel.nameController,
                      decoration: const InputDecoration(
                        hintText: AppConstants.nameText,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                Colors.grey, // Customize the border color here
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      onChanged: viewModel.paymentMethodDetector,
                      controller: viewModel.cardNumberController,
                      decoration: InputDecoration(
                        hintText: AppConstants.creditCardNumberText,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color:
                                Colors.grey, // Customize the border color here
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        suffixIcon: viewModel.cardNumberController.text.isEmpty
                            ? const Icon(Icons.warning)
                            : viewModel.busy(BusyObjectConstants.cardTypeText)
                                ? const Icon(Icons.warning)
                                : Image.asset(viewModel.cardType),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(height: 11),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Expires",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 155.50,
                              child: TextField(
                                controller: viewModel.expireDateController,
                                onTap: () {
                                  viewModel.selectDate(context);
                                },
                                decoration: const InputDecoration(
                                  hintText: "07/23",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors
                                          .grey, // Customize the border color here
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              AppConstants.cvvText,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 155.50,
                              child: TextField(
                                controller: viewModel.cvvController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: '***',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors
                                          .grey, // Customize the border color here
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 32),
                  AppButton(
                    title: AppConstants.saveText,
                    onClick: () {
                      viewModel.save(cardId);
                    },
                  ),
                ],
              ),
      ),
    );
  }

  @override
  AddCreditCardViewModel viewModelBuilder(BuildContext context) =>
      AddCreditCardViewModel();

  @override
  void onViewModelReady(AddCreditCardViewModel viewModel) {
    viewModel.init(
        oldPaymentMethod, name, cardNumber, expireDate, cvv, paymentMethod);
    super.onViewModelReady(viewModel);
  }
}
