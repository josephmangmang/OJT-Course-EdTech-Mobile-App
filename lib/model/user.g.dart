// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String,
      email: json['email'] as String,
      uid: json['uid'] as String,
      purchaseCourses: (json['purchaseCourses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      cartCourses: (json['cartCourses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      profileImageUrl: json['profileImageUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'uid': instance.uid,
      'purchaseCourses': instance.purchaseCourses,
      'cartCourses': instance.cartCourses,
      'profileImageUrl': instance.profileImageUrl,
    };
