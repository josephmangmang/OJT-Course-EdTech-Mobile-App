import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/svg_images.dart';


class SearchCourse extends StatefulWidget {
  final Function() searchPressed;
  TextEditingController searchTextController = TextEditingController();
  SearchCourse({super.key, required this.searchPressed, required this.searchTextController
  });

  @override
  State<SearchCourse> createState() => _SearchCourseState();
}

class _SearchCourseState extends State<SearchCourse> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: widget.searchTextController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: Color(0xFFBEBAB3),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            suffixIcon: Transform.scale(
                scale: 0.6,
                child: IconButton(onPressed: widget.searchPressed, icon: SvgPicture.asset(SvgImages.searchIcon)))),
      ),
    );
  }
}
