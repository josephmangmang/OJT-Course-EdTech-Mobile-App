import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'sign_up_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpView extends StackedView<SignUpViewModel> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
          child: viewModel.isBusy
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
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
                          'assets/png/Cool Kids Standing (1).png',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Column(
                          children: [
                            Text(
                              'Sign up',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.50,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'Create your Account',
                              style: TextStyle(
                                color: Color(0xFF78746D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        TextField(
                          controller: viewModel.nameTextController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: 'Name',
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
                        TextField(
                          controller: viewModel.emailTextController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: 'E-mail',
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
                        TextField(
                          controller: viewModel.passwordTextController,
                          obscureText: viewModel.obscureText,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              color: Color(0xFF78746D),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                viewModel.visibility();
                              },
                              icon: Transform.scale(
                                scale: 0.6,
                                child: SvgPicture.asset(
                                  'assets/svg/visibility 1 (1).svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              viewModel.signupPressed();
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
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: viewModel.goToLoginPage,
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              color: Color(0xFF78746D),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
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
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();

  void fold(void Function(dynamic l) param0, Future Function(dynamic r) param1) {}
}
