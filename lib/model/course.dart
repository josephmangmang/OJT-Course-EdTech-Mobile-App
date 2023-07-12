import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@Freezed()
class Course with _$Course {
  const factory Course({
    required String title,
    required String subtitle,
    required String intro,
    required String about,
    required String duration,
    required double price,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
