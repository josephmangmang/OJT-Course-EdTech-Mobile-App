import 'package:edtechapp/resources/png_images.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'test_question_viewmodel.dart';

class TestQuestionView extends StackedView<TestQuestionViewModel> {
  const TestQuestionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TestQuestionViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Column(children: [
              CustomAppBar(),
              Container(
                width: 343,
                height: 605,
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 343,
                      height: 118,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            child: const Text(
                              '1 of 20',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF78746D),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            child: const Text(
                              'Which tag for \nthe biggest header?',
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
                    Container(
                      width: 343,
                      height: 191,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF7F2EE),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFBEBAB3),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Image.asset(PngImages.coolKidsBrainstorming),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                    ),
                    Container(
                        width: 343,
                        height: 58,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFFBEBAB3)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              'A.',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.50,
                              ),
                            ),
                            Text(
                              '<h5>',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                    ),
                    Container(
                        width: 343,
                        height: 58,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.50, color: Color(0xFFBEBAB3)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              'B.',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.50,
                              ),
                            ),
                            Text(
                              '<p>',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                    ),
                    Container(
                        width: 343,
                        height: 58,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFF5EE),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFF3705A)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              'C.',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.50,
                              ),
                            ),
                            Text(
                              '<h1>',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.50,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              AppButton(title: AppConstants.continueText, onClick: () {})
            ]),
          ),
        ),
      ),
    );
  }

  @override
  TestQuestionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TestQuestionViewModel();
}
