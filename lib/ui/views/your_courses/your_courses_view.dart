import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:edtechapp/ui/custom_widget/your_course_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'your_courses_viewmodel.dart';

class YourCoursesView extends StackedView<YourCoursesViewModel> {
  const YourCoursesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    YourCoursesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: viewModel.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: CustomAppBar(
                      title: AppConstants.yourCourseText,
                    ),
                  ),
                  Expanded(
                    child: viewModel.courses.isEmpty
                        ? emptyView(context)
                        : ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: viewModel.courses.length,
                            itemBuilder: (context, index) {
                              var courseItem = viewModel.courses[index];
                              return YourCourseCard(
                                  courseSelected: () {
                                    viewModel.coursePressed(courseItem);
                                  },
                                  course: courseItem,
                                  color: viewModel.getColor(index));
                            },
                          ),
                  )
                ],
              ),
      ),
    );
  }

  @override
  YourCoursesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      YourCoursesViewModel();

  @override
  void onViewModelReady(YourCoursesViewModel viewModel) {
    viewModel.init();
    super.onViewModelReady(viewModel);
  }

  Widget emptyView(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: const Center(child: Text(AppConstants.noCoursesFound)));
  }
}
