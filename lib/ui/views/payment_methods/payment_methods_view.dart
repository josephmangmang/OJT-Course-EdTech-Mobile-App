import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/common/busy_object_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:edtechapp/ui/custom_widget/credit_card.dart';
import 'payment_methods_viewmodel.dart';

class PaymentMethodsView extends StackedView<PaymentMethodsViewModel> {
  const PaymentMethodsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PaymentMethodsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: viewModel.busy(BusyObjectConstants.yourCardText)
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomAppBar(
                      title: AppConstants.paymentText,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 8,
                      bottom: 78,
                      left: 16,
                    ),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      AppConstants.choosePaymentMethodText,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: viewModel.creditCard.length,
                            itemBuilder: (context, index) {
                              var creditCardItem = viewModel.creditCard[index];
                              return CreditCards(
                                creditCardButton: () {
                                  viewModel.setSelectedIndex(index);
                                },
                                paymentMethod: creditCardItem.paymentMethod,
                                expireDate: creditCardItem.expireDate,
                                cardNumber: creditCardItem.cardNumber,
                                isSelected:
                                    viewModel.isAddCreditCardClicked == true
                                        ? false
                                        : viewModel.selectedCardIndex == index,
                                marginSize: 25,
                              );
                            },
                          ),
                          Container(
                            padding: const EdgeInsets.all(14),
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                              border: viewModel.isAddCreditCardClicked == true
                                  ? Border.all(
                                      color: const Color(0xFFE3562A),
                                      width: 2,
                                    )
                                  : null,
                            ),
                            child: TextButton(
                              onPressed: viewModel.onAddCreditCardClick,
                              child: const Text(
                                'Add credit card',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: AppButton(
          title: "Continue",
          onClick: viewModel.onContinuePressed,
        ),
      ),
    );
  }

  @override
  PaymentMethodsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentMethodsViewModel();

  @override
  void onViewModelReady(PaymentMethodsViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
