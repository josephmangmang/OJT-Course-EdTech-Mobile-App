import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@Freezed()
class Course with _$Course {
  const factory Course({
    required String title,
    required String subtitle,
    required String about,
    required String duration,
    required String category,
    required String image,
    required double price,
    required String id,
    String? video,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
