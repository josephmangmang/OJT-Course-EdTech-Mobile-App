import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:edtechapp/ui/common/app_colors.dart';
import 'package:edtechapp/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../custom_widget/credit_card.dart';
import 'payment_method_dialog_model.dart';

const double _graphicSize = 60;

class PaymentMethodDialog extends StackedView<PaymentMethodDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const PaymentMethodDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PaymentMethodDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: viewModel.busy('yourCard')
          ? const SizedBox(
              width: 160,
              height: 160,
              child: Center(child: CircularProgressIndicator()))
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            request.title!,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w900),
                          ),
                          verticalSpaceTiny
                        ],
                      ),
                      Container(
                        width: _graphicSize,
                        height: _graphicSize,
                        decoration: const BoxDecoration(
                          color: Color(0xffF6E7B0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(_graphicSize / 2),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '🔐',
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
                  verticalSpaceSmall,
                  Visibility(
                    visible: viewModel.creditCard.isNotEmpty,
                    child: ListView.builder(
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
                          isSelected: viewModel.selectedCardIndex == index,
                          marginSize: 0,
                        );
                      },
                    ),
                  ),
                  Center(
                    child: Visibility(
                      visible: viewModel.creditCard.isEmpty,
                      child: const Text(
                        'Empty payment method',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  Visibility(
                    visible: viewModel.creditCard.isNotEmpty,
                      child: AppButton(
                          title: 'Delete',
                          onClick: viewModel.deletePaymentMethod)),
                  GestureDetector(
                    onTap: () => completer(DialogResponse(confirmed: true)),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: viewModel.isBusy
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Got it',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                    ),
                  )
                ],
              ),
            ),
    );
  }

  @override
  PaymentMethodDialogModel viewModelBuilder(BuildContext context) =>
      PaymentMethodDialogModel();

  @override
  void onViewModelReady(PaymentMethodDialogModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
