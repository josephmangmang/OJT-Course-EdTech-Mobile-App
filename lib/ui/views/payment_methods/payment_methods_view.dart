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
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 56,
                    top: 8,
                  ),
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/Background.svg'),
                          SvgPicture.asset('assets/svg/Go-back.svg'),
                        ],
                      ),
                      const Expanded(
                        child: Text(
                          'Payment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3B3936),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.50,
                          ),
                        ),
                      ),
                    ],
                  ),
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: Stack(children: [
                        Container(
                          width: double.infinity,
                          height: 69,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: Stack(children: [
                        Container(
                          width: double.infinity,
                          height: 69,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
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
                    const SizedBox(
                      height: 216,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        margin: const EdgeInsets.symmetric(horizontal: 33 - 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFFE35629),
                        ),
                        child: const Text(
                          "Continue",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
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
