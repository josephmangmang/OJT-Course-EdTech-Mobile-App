import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:edtechapp/ui/views/navigation_bar/navigation_bar_view.dart';
import 'your_courses_viewmodel.dart';

class YourCoursesView extends StackedView<YourCoursesViewModel> {
  const YourCoursesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    YourCoursesViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
        child: Column(
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
                      buildCard(
                        image: 'assets/png/Cool Kids Alone Time (2).png',
                        subtitle: 'Left 1h 20 min',
                        title: 'Swift',
                        body: 'Advanced iOS apps',
                        color: const Color(0xFFF7F2EE),
                      ),
                      buildCard(
                        image: 'assets/png/Cool Kids Performing.png',
                        subtitle: 'Left 1h 20 min',
                        title: 'Scrum',
                        body: 'Advanced project prganization course',
                        color: const Color(0xFFF7F2EE),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }

  @override
  YourCoursesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      YourCoursesViewModel();
}

Widget buildCard({
  required String image,
  required String subtitle,
  required String title,
  required String body,
  required Color color,
}) {
  return Container(
    margin: const EdgeInsets.only(top: 16),
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: 0.50,
          strokeAlign: BorderSide.strokeAlignOutside,
          color: Color(0xFFBEBAB3),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    child: Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
          ),
          child: Image.asset(
            image,
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.only(
            right: 16,
            left: 16,
            top: 16,
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                  color: Color(0xFF5BA092),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF3B3936),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.50,
                  height: 1.5,
                ),
              ),
              Text(
                body,
                style: const TextStyle(
                  color: Color(0xFF3B3936),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
