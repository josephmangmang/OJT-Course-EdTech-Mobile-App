import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
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
                CustomAppBar(
                  title: AppConstants.checkoutText,
                ),
                Column(
                  children: [
                    Container(
                      width: 373,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                PngImages.illustration,
                                width: 169,
                                height: 122,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "HTML",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "50.00",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "You can launch a new career in web development today by learning HTML & CSS. You dont need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
                                style: TextStyle(
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
                                        strokeAlign: BorderSide.strokeAlignOutside,
                                        color: Color(0xFFBEBAB3),
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(PngImages.image2),
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
                                ),
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
                  title: "Confirm payment \$50.00",
                  onClick: () {},
                )
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
}
