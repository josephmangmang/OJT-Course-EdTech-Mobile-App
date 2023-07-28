// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      question: json['question'] as String,
      choices: json['choices'] as List<dynamic>,
      id: json['id'] as String,
      image: json['image'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'question': instance.question,
      'choices': instance.choices,
      'id': instance.id,
      'image': instance.image,
      'answer': instance.answer,
    };
