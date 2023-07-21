// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditCard _$$_CreditCardFromJson(Map<String, dynamic> json) =>
    _$_CreditCard(
      name: json['name'] as String,
      cardNumber: json['cardNumber'] as String,
      expireDate: json['expireDate'] as String,
      cvv: json['cvv'] as String,
      paymentMethod: json['paymentMethod'] as String,
    );

Map<String, dynamic> _$$_CreditCardToJson(_$_CreditCard instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cardNumber': instance.cardNumber,
      'expireDate': instance.expireDate,
      'cvv': instance.cvv,
      'paymentMethod': instance.paymentMethod,
    };
