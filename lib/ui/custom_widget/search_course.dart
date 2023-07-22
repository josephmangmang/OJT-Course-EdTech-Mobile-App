import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/svg_images.dart';

class SearchCourse extends StatefulWidget {
  final Function() searchPressed;
  TextEditingController searchTextController = TextEditingController();

  SearchCourse(
      {super.key,
      required this.searchPressed,
      required this.searchTextController});

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
          hintText: AppConstants.searchHintText,
          hintStyle: const TextStyle(
            color: Color(0xFF78746D),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xFFBEBAB3),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: IconButton(
            onPressed: widget.searchPressed,
            icon: SvgPicture.asset(SvgImages.searchIcon),
          ),
        ),
      ),
    );
  }
}
