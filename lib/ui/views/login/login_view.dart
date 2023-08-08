import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/resources/svg_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/social_networks.dart';
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
          child: viewModel.isBusy
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 52.0,
                        ),
                        Image.asset(
                          PngImages.coolKidsSitting,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Column(
                          children: [
                            const Text(
                              AppConstants.logInText,
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
                              AppConstants.loginBodyText,
                              style: TextStyle(
                                color: Color(0xFF78746D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),

                            SocialNetworks(facebookClick: viewModel.facebookLogin, googleClick: viewModel.signInWithGoogle, instagramClick: (){})
                          ],
                        ),

                        const SizedBox(
                          height: 16.0,
                        ),
                        TextField(
                          controller: viewModel.emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            labelText: AppConstants.emailText,
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
                          controller: viewModel.passwordController,
                          obscureText: !viewModel.isPasswordVisible,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              labelText: AppConstants.passwordText,
                              labelStyle: const TextStyle(
                                color: Color(0xFF78746D),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              suffixIcon: IconButton(
                                icon: SvgPicture.asset(SvgImages.visibility1),
                                onPressed: viewModel.showPassword,
                              )),
                        ),
                        TextButton(
                          onPressed: viewModel.goToForgetPassword,
                          child: const Text(
                            AppConstants.forgotPasswordText,
                            style: TextStyle(
                              color: Color(0xFF78746D),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        AppButton(
                          title: AppConstants.logInText,
                          onClick: viewModel.logIn,
                        ),
                        TextButton(
                          onPressed: viewModel.signUp,
                          child: const Text(
                            AppConstants.signUpText,
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
