// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      about: json['about'] as String,
      duration: json['duration'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      id: json['id'] as String,
      video: json['video'] as String?,
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'about': instance.about,
      'duration': instance.duration,
      'category': instance.category,
      'image': instance.image,
      'price': instance.price,
      'id': instance.id,
      'video': instance.video,
    };
