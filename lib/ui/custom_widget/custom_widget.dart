
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget CourseCard(
  {
    required double price,
    required String hour,
    required String description,
    required String title,
    required String image,
    required int color,
    required Function() courseSelected,
  }
) {
  return ListTile(
      title: GestureDetector(
        onTap: courseSelected,
        child: Container(
          padding: const EdgeInsets.all(3),
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
                color: Color(color),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(image),
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      12.0), // Adjust the radius as per your needs
                                ),
                              ),
                            ),
                            onPressed: () {
                              
                            },
                            child: Text("$price"),
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
                          hour,
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
                          title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      Text(
                        description,
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


Widget CustomAppBar({String title = "",  required Function() action}) {
  return Container(
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
            onPressed: action,
            icon: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset('assets/svg/Background.svg'),
                SvgPicture.asset('assets/svg/Go-back.svg'),
              ],
            ),
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF3B3936),
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.50,
              ),
            ),
          ),
        ],
      ),
    );
}

