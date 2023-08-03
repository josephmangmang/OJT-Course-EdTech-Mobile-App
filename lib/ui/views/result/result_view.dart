import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/resources/svg_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'result_viewmodel.dart';

class ResultView extends StackedView<ResultViewModel> {
  const ResultView({required this.textResult, Key? key}) : super(key: key);

  final String textResult;
  @override
  Widget builder(
    BuildContext context,
    ResultViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Center(
              child: Column(children: [
                //verticalSpaceLarge,
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomAppBar(
                    title: AppConstants.resultText,
                  ),
                ),
                Container(
                  width: 375,
                  height: 620,
                  padding: const EdgeInsets.only(top: 163),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 375,
                        height: 253,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(PngImages.coolKidsXmasMorning),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: 341,
                        padding: const EdgeInsets.only(top: 32),
                        child: const Text(
                          AppConstants.congratsText,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3B3936),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.50,
                          ),
                        ),
                      ),
                      Container(
                        width: 341,
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          textResult,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF78746D),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 343,
                  height: 120,
                  padding: const EdgeInsets.only(top: 17, bottom: 8, left: 116),
                  child: Row(
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF65A9E9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Container(
                            width: 24,
                            height: 24,
                            alignment: Alignment.center,
                            child: SvgPicture.asset(SvgImages.facebookIcon),
                          )),
                      Container(
                        padding: const EdgeInsets.only(right: 16),
                      ),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF65A9E9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Container(
                            width: 24,
                            height: 24,
                            alignment: Alignment.center,
                            child: SvgPicture.asset(SvgImages.instagramIcon),
                          )),
                      Container(
                        padding: const EdgeInsets.only(right: 16),
                      ),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF65A9E9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Container(
                            width: 24,
                            height: 24,
                            alignment: Alignment.center,
                            child: SvgPicture.asset(SvgImages.googleIcon),
                          )),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }

  @override
  ResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResultViewModel();
}
