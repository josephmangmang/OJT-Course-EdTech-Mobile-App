import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtechapp/model/course.dart';
import 'package:flutter/material.dart';

typedef CourseSelected = Function();

class YourCourseCard extends StatelessWidget {
  const YourCourseCard({
    Key? key,
    required this.courseSelected,
    required this.course,
    required this.color,
  }) : super(key: key);

  final CourseSelected courseSelected;
  final Course course;
  final int color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onTap: courseSelected,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
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
                color: Color(color),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                      imageUrl: course.image,
                      errorWidget: (context, url, error) => const SizedBox(
                          height: 195,
                          child: Icon(
                            Icons.error,
                            color: Colors.red,
                          )),
                      placeholder: (context, url) => Container(
                        height: 195,
                      ),
                      fit: BoxFit.fill ,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          course.duration,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF5BA092),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          course.title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      Text(
                        course.subtitle,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
