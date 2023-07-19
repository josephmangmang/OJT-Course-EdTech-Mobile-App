import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'payment_addded_viewmodel.dart';

class PaymentAdddedView extends StackedView<PaymentAdddedViewModel> {
  const PaymentAdddedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PaymentAdddedViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
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
                      GestureDetector(
                        onTap: viewModel.backPressed,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset('assets/svg/Background.svg'),
                            SvgPicture.asset('assets/svg/Go-back.svg'),
                          ],
                        ),
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
                const SizedBox(
                  height: 127,
                ),
                Image.asset('assets/png/Cool Kids Sitting.png'),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Payment method added',
                  style: TextStyle(
                    color: Color(0xFF3B3936),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.50,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'You can buy the course now. \nContinue to payment.',
                  style: TextStyle(
                    color: Color(0xFF78746D),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: viewModel.payCourse,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 33 - 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFE35629),
                    ),
                    child: const Text(
                      'Continue',
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
          ),
        ),
      ),
    );
  }

  @override
  PaymentAdddedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PaymentAdddedViewModel();
}
