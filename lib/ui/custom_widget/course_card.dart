import 'package:cached_network_image/cached_network_image.dart';
import 'package:edtechapp/model/course.dart';
import 'package:flutter/material.dart';

typedef OnItemPressed = Function(Course course);

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key, required this.course, required this.onItemPressed, required this.backgroundColor})
      : super(key: key);

  final Color backgroundColor;
  final Course course;
  final OnItemPressed onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: InkWell(
          onTap: () => onItemPressed(course),
          child: Container(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              border: const Border.fromBorderSide(
                BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0xFFBEBAB3),
                  style: BorderStyle.solid,
                ),
              ),
              borderRadius: BorderRadiusDirectional.circular(8),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: backgroundColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag: 'image_cover_${course.id}',
                        child: CachedNetworkImage(
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
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        width: 343,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(flex: 21),
                            ElevatedButton(
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all<Size>(
                                  const Size(63, 24),
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0), // Adjust the radius as per your needs
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text("${course.price}"),
                            ),
                            const Spacer(flex: 1),
                          ],
                        ),
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
      ),
    );
  }
}
