import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'forgot_password_viewmodel.dart';

class ForgotPasswordView extends StackedView<ForgotPasswordViewModel> {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ForgotPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Transform.scale(
                  scale: 1.5,
                  child: IconButton(
                    alignment: Alignment.centerLeft,
                    icon: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset('assets/svg/Background.svg'),
                        SvgPicture.asset('assets/svg/Go-back.svg'),
                      ],
                    ),
                    onPressed: viewModel.goToLoginPage,
                  ),
                ),
              ),
              Image.asset(
                'assets/png/my-password-concept.png',
              ),
              const SizedBox(
                height: 16,
              ),
              const Column(
                children: [
                  Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.50,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Enter your email below to receive\n a password reset instruction',
                    style: TextStyle(
                      color: Color(0xFF78746D),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              TextField(
                controller: viewModel.emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Enter Your Email Here',
                  labelStyle: const TextStyle(
                    color: Color(0xFF78746D),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    viewModel.submit();
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    ),
                    alignment: Alignment.center,
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFE35629),
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  @override
  ForgotPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ForgotPasswordViewModel();
}
