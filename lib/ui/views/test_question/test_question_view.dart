import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../model/course.dart';
import '../../../model/topic.dart';
import 'test_question_viewmodel.dart';

class TestQuestionView extends StackedView<TestQuestionViewModel> {
  const TestQuestionView(this.course, this.topic, {Key? key}) : super(key: key);

  final Course course;
  final Topic topic;

  @override
  Widget builder(
    BuildContext context,
    TestQuestionViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
        child: Scaffold(
      body: viewModel.isBusy
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  CustomAppBar(),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: ListView(
                      controller: viewModel.listViewController,
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        Text(
                          "${viewModel.questionCurrentIndex + 1} of ${viewModel.questions.length}",
                          style: const TextStyle(
                            color: Color(0xFF78746D),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.50,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          viewModel.currentQuestion!.question,
                          style: const TextStyle(
                            color: Color(0xFF3B3936),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.50,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          padding:
                          const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 1,
                                color: const Color(0xFFBEBAB3),
                              )),
                          child: CachedNetworkImage(
                            height: 175,
                            width: 311,
                            imageUrl: viewModel.currentQuestion!.image,
                            errorWidget: (context, url, error) => const SizedBox(
                                height: 175,
                                width: 311,
                                child: Icon(
                                  Icons.error,
                                  color: Colors.red,
                                )),
                            placeholder: (context, url) => Container(
                              height: 175,
                              width: 311,
                              child: const Center(child: CircularProgressIndicator(),),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: viewModel.currentQuestion!.choices.length,
                          itemBuilder: (context, index) {
                            var choiceItem =
                            viewModel.currentQuestion!.choices[index];
                            return InkWell(
                              onTap: () => viewModel.selectChoice(index),
                              child: AbsorbPointer(
                                child: Container(
                                  margin:const EdgeInsets.symmetric(vertical: 8) ,
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 16),

                                  decoration: BoxDecoration(
                                    color: viewModel.selectedChoice == index ? const Color(0xFFFFF5EE) : Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      width: 1,
                                      color: viewModel.selectedChoice == index ? const Color(0xFFF3705A) : const Color(0xFFBEBAB3),
                                    ),
                                  ),
                                  child: Text(
                                    choiceItem,
                                    style: const TextStyle(
                                      color: Color(0xFF3B3936),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 24, top: 8),
                      child: AppButton(
                          title: AppConstants.continueText, onClick: viewModel.continueClicked))
                ],
              ),
            ),
    ));
  }

  @override
  TestQuestionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TestQuestionViewModel(course, topic);

  @override
  void onViewModelReady(TestQuestionViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }
}
