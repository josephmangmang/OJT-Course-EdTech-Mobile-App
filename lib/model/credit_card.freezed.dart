// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditCard _$CreditCardFromJson(Map<String, dynamic> json) {
  return _CreditCard.fromJson(json);
}

/// @nodoc
mixin _$CreditCard {
  String get name => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get expireDate => throw _privateConstructorUsedError;
  String get cvv => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditCardCopyWith<CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardCopyWith<$Res> {
  factory $CreditCardCopyWith(
          CreditCard value, $Res Function(CreditCard) then) =
      _$CreditCardCopyWithImpl<$Res, CreditCard>;
  @useResult
  $Res call(
      {String name,
      String cardNumber,
      String expireDate,
      String cvv,
      String paymentMethod,
      String id});
}

/// @nodoc
class _$CreditCardCopyWithImpl<$Res, $Val extends CreditCard>
    implements $CreditCardCopyWith<$Res> {
  _$CreditCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cardNumber = null,
    Object? expireDate = null,
    Object? cvv = null,
    Object? paymentMethod = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expireDate: null == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditCardCopyWith<$Res>
    implements $CreditCardCopyWith<$Res> {
  factory _$$_CreditCardCopyWith(
          _$_CreditCard value, $Res Function(_$_CreditCard) then) =
      __$$_CreditCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String cardNumber,
      String expireDate,
      String cvv,
      String paymentMethod,
      String id});
}

/// @nodoc
class __$$_CreditCardCopyWithImpl<$Res>
    extends _$CreditCardCopyWithImpl<$Res, _$_CreditCard>
    implements _$$_CreditCardCopyWith<$Res> {
  __$$_CreditCardCopyWithImpl(
      _$_CreditCard _value, $Res Function(_$_CreditCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cardNumber = null,
    Object? expireDate = null,
    Object? cvv = null,
    Object? paymentMethod = null,
    Object? id = null,
  }) {
    return _then(_$_CreditCard(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expireDate: null == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreditCard implements _CreditCard {
  const _$_CreditCard(
      {required this.name,
      required this.cardNumber,
      required this.expireDate,
      required this.cvv,
      required this.paymentMethod,
      required this.id});

  factory _$_CreditCard.fromJson(Map<String, dynamic> json) =>
      _$$_CreditCardFromJson(json);

  @override
  final String name;
  @override
  final String cardNumber;
  @override
  final String expireDate;
  @override
  final String cvv;
  @override
  final String paymentMethod;
  @override
  final String id;

  @override
  String toString() {
    return 'CreditCard(name: $name, cardNumber: $cardNumber, expireDate: $expireDate, cvv: $cvv, paymentMethod: $paymentMethod, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCard &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, cardNumber, expireDate, cvv, paymentMethod, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      __$$_CreditCardCopyWithImpl<_$_CreditCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditCardToJson(
      this,
    );
  }
}

abstract class _CreditCard implements CreditCard {
  const factory _CreditCard(
      {required final String name,
      required final String cardNumber,
      required final String expireDate,
      required final String cvv,
      required final String paymentMethod,
      required final String id}) = _$_CreditCard;

  factory _CreditCard.fromJson(Map<String, dynamic> json) =
      _$_CreditCard.fromJson;

  @override
  String get name;
  @override
  String get cardNumber;
  @override
  String get expireDate;
  @override
  String get cvv;
  @override
  String get paymentMethod;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}
