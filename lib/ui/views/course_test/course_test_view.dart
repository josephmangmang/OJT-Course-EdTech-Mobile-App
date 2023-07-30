import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../model/course.dart';
import '../../../model/topic.dart';
import 'course_test_viewmodel.dart';

class CourseTestView extends StackedView<CourseTestViewModel> {
  const CourseTestView(this.topic, this.course, {Key? key}) : super(key: key);

  final Topic topic;
  final Course course;

  @override
  Widget builder(
    BuildContext context,
    CourseTestViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 500,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1,
              color: const Color(0xFFBEBAB3),
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 24),
                child: CachedNetworkImage(
                  height: 197,
                  width: 343,
                  imageUrl: course.image,
                  errorWidget: (context, url, error) => const SizedBox(
                      height: 197,
                      width: 343,
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      )),
                  placeholder: (context, url) => Container(
                    height: 197,
                    width: 343,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: 295,
                height: 122,
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        AppConstants.quizText,
                        style: TextStyle(
                          color: Color(0xFFE35629),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        topic.topic,
                        style: const TextStyle(
                          color: Color(0xFF3B3936),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.50,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 8),
                      child: const Text(
                        AppConstants.quizDescriptionText,
                        style: TextStyle(
                          color: Color(0xFF78746D),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){},
                child: AbsorbPointer(
                  child: Container(
                    width: 295,
                    height: 56,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFFE35629)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      AppConstants.beginText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3B3936),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CourseTestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CourseTestViewModel();
}
