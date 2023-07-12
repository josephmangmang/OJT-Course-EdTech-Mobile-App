// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      intro: json['intro'] as String,
      about: json['about'] as String,
      duration: json['duration'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'intro': instance.intro,
      'about': instance.about,
      'duration': instance.duration,
      'price': instance.price,
    };
