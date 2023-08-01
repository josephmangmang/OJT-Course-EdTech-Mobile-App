import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtechapp/model/course.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:edtechapp/ui/custom_widget/app_button.dart';
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
                  margin: const EdgeInsets.only(
                    bottom: 8,
                    right: 16,
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        title: course.title,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          Hero(
                            tag: 'image_cover_${course.id}',
                            child: CachedNetworkImage(
                              imageUrl: course.image,
                              errorWidget: (context, url, error) =>
                                  const SizedBox(
                                      height: 195,
                                      child: Icon(
                                        Icons.error,
                                        color: Colors.red,
                                      )),
                              placeholder: (context, url) => Container(
                                height: 195,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFF65A9E9),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 4),
                              child: Text(
                                '\$${course.price}',
                                style: const TextStyle(
                                  color: Color(0xFFF2F2F2),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        AppConstants.aboutCourseText,
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
                              AppConstants.durationText,
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
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AppButton(
                          title: AppConstants.purchaseText,
                          onClick: viewModel.purchase)
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
