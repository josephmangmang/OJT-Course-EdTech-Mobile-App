import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 52.0,
              ),
              Image.asset(
                'assets/png/Cool Kids Sitting.png',
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  const Text(
                    'Log in',
                    style: TextStyle(
                      color: Color(0xFF3B3936),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.50,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Text(
                    'Login with social networks',
                    style: TextStyle(
                      color: Color(0xFF78746D),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0xFF65A9E9),
                              borderRadius: BorderRadius.circular(8)),
                          child: SvgPicture.asset(
                              'assets/svg/Social Networks Icons.svg'),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0xFF65A9E9),
                              borderRadius: BorderRadius.circular(8)),
                          child: SvgPicture.asset(
                              'assets/svg/Social Networks Icons (1).svg'),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0xFF65A9E9),
                              borderRadius: BorderRadius.circular(8)),
                          child: SvgPicture.asset(
                              'assets/svg/Social Networks Icons (2).svg'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Email',
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
                obscureText: true,
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
                  suffixIcon: Transform.scale(
                    scale: 0.6,
                    child: SvgPicture.asset(
                      'assets/svg/visibility 1.svg',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xFFE35629),
                ),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              GestureDetector(
                onTap: viewModel.signUp,
                child: const Text(
                  'Sign up',
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
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
