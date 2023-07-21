import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

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
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                CustomAppBar(
                  title: AppConstants.paymentText,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 8,
                        bottom: 78,
                        left: 16,
                      ),
                      child: const Text(
                        "Choose payment method",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: viewModel.onMasterCardClick,
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          border: viewModel.isMasterCardClicked ? Border.all(
                            color: const Color(0xFFE3562A),
                            width: 1,
                          ) : null,
                        ),
                        child: Stack(children: [
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 59,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Row(
                            children: [
                              Image.asset('assets/png/image_2.png'),
                              const SizedBox(
                                width: 16,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("*** *** *** 5738",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  Text("Expires 09/29",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: viewModel.onVisaCardClick,
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          border: viewModel.isVisaCardClicked ? Border.all(
                            color: const Color(0xFFE3562A),
                            width: 1,
                          ) : null,
                        ),
                        child: Stack(children: [
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 59,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Row(
                            children: [
                              Image.asset('assets/png/image 3.png'),
                              const SizedBox(
                                width: 16,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("*** *** *** 8897",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  Text("Expires 09/29",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 216,
                    ),
                    AppButton(title: "Continue", onClick: () {
                      viewModel.onContinuePressed(viewModel.isMasterCardClicked ? 0 : 1);
                    })
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  PaymentMethodsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentMethodsViewModel();
}
