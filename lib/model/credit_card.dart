import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credit_card.freezed.dart';
part 'credit_card.g.dart';

@Freezed()
class CreditCard with _$CreditCard {
  const factory CreditCard({
    required String name,
    required String cardNumber,
    required String expireDate,
    required String cvv,
    required String paymentMethod,
  }) = _CreditCard;

  factory CreditCard.fromJson(Map<String, dynamic> json) => _$CreditCardFromJson(json);
}