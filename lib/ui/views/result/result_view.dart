import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'result_viewmodel.dart';

class ResultView extends StackedView<ResultViewModel> {
  const ResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResultViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Center(
              child: Column(children: [
                //verticalSpaceLarge,
                Container(
                  width: 375,
                  height: 40,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey),
                            ),
                            child: ClipOval(
                              child: SizedBox(
                                height: 48,
                                width: 48,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                      'assets/svg/Go-back.svg'),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 263,
                            height: 32,
                            alignment: Alignment.center,
                            child: const Text(
                              'Results',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 24,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
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
                            image: AssetImage(
                                "assets/png/Cool Kids Xmas Morning.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Container(
                        width: 341,
                        padding: const EdgeInsets.only(top: 32),
                        child: const Text(
                          'Congratulations',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3B3936),
                            fontSize: 24,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.50,
                          ),
                        ),
                      ),
                      Container(
                        width: 341,
                        padding: const EdgeInsets.only(top: 8),
                        child: const Text(
                          'Congratulations for getting \nall the answers corrects!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF78746D),
                            fontSize: 14,
                            fontFamily: 'Rubik',
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
                          child: SvgPicture.asset('assets/svg/facebook-icon.svg'),
                        )
                      ),
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
                          child: SvgPicture.asset('assets/svg/Instagram-icon.svg'),
                        )
                      ),
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
                          child: SvgPicture.asset('assets/svg/Google-icon.svg'),
                        )
                      ),
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
