import 'package:edtechapp/model/course.dart';
import 'package:edtechapp/ui/custom_widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'project_detail_viewmodel.dart';

class ProjectDetailView extends StackedView<ProjectDetailViewModel> {
  const ProjectDetailView(this.course, {Key? key}) : super(key: key);

  final Course course;

  @override
  Widget builder(
    BuildContext context,
    ProjectDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: viewModel.isBusy
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 8, right: 16, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     CustomAppBar(title: course.title,),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'About the course',
                        style: TextStyle(
                          color: Color(0xFF3B3936),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.50,
                        ),
                      ),
                      Text(
                        viewModel.course.about,
                        style: const TextStyle(
                          height: 1.4,
                          color: Color(0xFF3B3936),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Duration',
                              style: TextStyle(
                                color: Color(0xFF3B3936),
                                height: 1.4,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.50,
                              ),
                            ),
                            Text(
                              viewModel.course.duration,
                              style: const TextStyle(
                                  height: 1.4,
                                  color: Color(0xFF3B3936),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: viewModel.addToCart,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          margin:
                              const EdgeInsets.symmetric(horizontal: 33 - 16),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE35629),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Text(
                            'Add to cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  @override
  ProjectDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProjectDetailViewModel(course);
}
