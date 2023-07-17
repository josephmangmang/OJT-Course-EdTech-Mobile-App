import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'your_courses_viewmodel.dart';
import 'package:edtechapp/ui/custom_widget/custom_widget.dart';

class YourCoursesView extends StackedView<YourCoursesViewModel> {
  const YourCoursesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    YourCoursesViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<YourCoursesViewModel>.reactive(
        viewModelBuilder: () => YourCoursesViewModel(),
        onViewModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
              child: viewModel.isBusy
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Wrap(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 56 - 16),
                                    child: Row(
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SvgPicture.asset('assets/svg/Background.svg'),
                                            SvgPicture.asset('assets/svg/Go-back.svg'),
                                          ],
                                        ),
                                        const Expanded(
                                          child: Text(
                                            'Your Courses',
                                            style: TextStyle(
                                              color: Color(0xFF3B3936),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -0.50,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  if (viewModel.courses.isEmpty)
                                    emptyView(context)
                                  else
                                    ListView.builder(
                                      shrinkWrap: true,
                                      primary: false,
                                      itemCount: viewModel.courses.length,
                                      itemBuilder: (context, index) {
                                        var courseItem = viewModel.courses[index];
                                        return YourCourseCard(
                                            description: courseItem.subtitle,
                                            title: courseItem.title,
                                            color: viewModel.getColor(index),
                                            hour: courseItem.duration,
                                            image: courseItem.image,
                                            courseSelected: () {
                                              viewModel.coursePressed(courseItem.id);
                                            });
                                      },
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          );
        });
  }

  @override
  YourCoursesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      YourCoursesViewModel();

  Widget emptyView(BuildContext context) {
    return SizedBox(height: MediaQuery.sizeOf(context).height, child: const Center(child: Text('No courses found')));
  }
}
