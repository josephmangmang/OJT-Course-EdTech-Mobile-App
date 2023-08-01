import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/common/app_temp.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:edtechapp/ui/custom_widget/credit_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../model/course.dart';
import 'payment_checkout_viewmodel.dart';

class PaymentCheckoutView extends StackedView<PaymentCheckoutViewModel> {
  const PaymentCheckoutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PaymentCheckoutViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomAppBar(
                    title: AppConstants.checkoutText,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 373,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                AppTempConstant.tempCourse!.image,
                                width: 169,
                                height: 122,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Wrap(children: [
                                      Text(
                                        AppTempConstant.tempCourse!.title,
                                        style: const TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '${AppTempConstant.tempCourse!.price}',
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppTempConstant.tempCourse!.subtitle,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 31,
                              ),
                              const Text(
                                AppConstants.paymentMethodText,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 31,
                              ),
                              Stack(children: [
                                Container(
                                  width: double.infinity,
                                  height: 69,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 0.50,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                        color: Color(0xFFBEBAB3),
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                CreditCards(
                                  creditCardButton: () {},
                                  paymentMethod:
                                      viewModel.creditCard.paymentMethod,
                                  cardNumber: viewModel.creditCard.cardNumber,
                                  isSelected: false,
                                  expireDate: viewModel.creditCard.expireDate,
                                )
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 216,
                ),
                AppButton(
                    title:
                        "Confirm payment \$${AppTempConstant.tempCourse!.price}",
                    onClick: viewModel.payCourse)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  PaymentCheckoutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentCheckoutViewModel();

  @override
  void onViewModelReady(PaymentCheckoutViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
