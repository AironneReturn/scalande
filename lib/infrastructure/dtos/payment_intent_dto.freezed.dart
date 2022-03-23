// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_intent_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentIntentDto _$PaymentIntentDtoFromJson(Map<String, dynamic> json) {
  return _PaymentIntentDto.fromJson(json);
}

/// @nodoc
class _$PaymentIntentDtoTearOff {
  const _$PaymentIntentDtoTearOff();

  _PaymentIntentDto call(
      {@JsonKey(name: 'id', includeIfNull: false) required String id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'receipt_email') String? emailCustomer,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created', fromJson: _fromJson) DateTime? timeStamp}) {
    return _PaymentIntentDto(
      id: id,
      amount: amount,
      emailCustomer: emailCustomer,
      status: status,
      timeStamp: timeStamp,
    );
  }

  PaymentIntentDto fromJson(Map<String, Object?> json) {
    return PaymentIntentDto.fromJson(json);
  }
}

/// @nodoc
const $PaymentIntentDto = _$PaymentIntentDtoTearOff();

/// @nodoc
mixin _$PaymentIntentDto {
  @JsonKey(name: 'id', includeIfNull: false)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'receipt_email')
  String? get emailCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created', fromJson: _fromJson)
  DateTime? get timeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentIntentDtoCopyWith<PaymentIntentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentIntentDtoCopyWith<$Res> {
  factory $PaymentIntentDtoCopyWith(
          PaymentIntentDto value, $Res Function(PaymentIntentDto) then) =
      _$PaymentIntentDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id', includeIfNull: false) String id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'receipt_email') String? emailCustomer,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created', fromJson: _fromJson) DateTime? timeStamp});
}

/// @nodoc
class _$PaymentIntentDtoCopyWithImpl<$Res>
    implements $PaymentIntentDtoCopyWith<$Res> {
  _$PaymentIntentDtoCopyWithImpl(this._value, this._then);

  final PaymentIntentDto _value;
  // ignore: unused_field
  final $Res Function(PaymentIntentDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? emailCustomer = freezed,
    Object? status = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      emailCustomer: emailCustomer == freezed
          ? _value.emailCustomer
          : emailCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentIntentDtoCopyWith<$Res>
    implements $PaymentIntentDtoCopyWith<$Res> {
  factory _$PaymentIntentDtoCopyWith(
          _PaymentIntentDto value, $Res Function(_PaymentIntentDto) then) =
      __$PaymentIntentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id', includeIfNull: false) String id,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'receipt_email') String? emailCustomer,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created', fromJson: _fromJson) DateTime? timeStamp});
}

/// @nodoc
class __$PaymentIntentDtoCopyWithImpl<$Res>
    extends _$PaymentIntentDtoCopyWithImpl<$Res>
    implements _$PaymentIntentDtoCopyWith<$Res> {
  __$PaymentIntentDtoCopyWithImpl(
      _PaymentIntentDto _value, $Res Function(_PaymentIntentDto) _then)
      : super(_value, (v) => _then(v as _PaymentIntentDto));

  @override
  _PaymentIntentDto get _value => super._value as _PaymentIntentDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? emailCustomer = freezed,
    Object? status = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_PaymentIntentDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      emailCustomer: emailCustomer == freezed
          ? _value.emailCustomer
          : emailCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentIntentDto implements _PaymentIntentDto {
  const _$_PaymentIntentDto(
      {@JsonKey(name: 'id', includeIfNull: false) required this.id,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'receipt_email') this.emailCustomer,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created', fromJson: _fromJson) this.timeStamp});

  factory _$_PaymentIntentDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentIntentDtoFromJson(json);

  @override
  @JsonKey(name: 'id', includeIfNull: false)
  final String id;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'receipt_email')
  final String? emailCustomer;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'created', fromJson: _fromJson)
  final DateTime? timeStamp;

  @override
  String toString() {
    return 'PaymentIntentDto(id: $id, amount: $amount, emailCustomer: $emailCustomer, status: $status, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentIntentDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.emailCustomer, emailCustomer) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.timeStamp, timeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(emailCustomer),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(timeStamp));

  @JsonKey(ignore: true)
  @override
  _$PaymentIntentDtoCopyWith<_PaymentIntentDto> get copyWith =>
      __$PaymentIntentDtoCopyWithImpl<_PaymentIntentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentIntentDtoToJson(this);
  }
}

abstract class _PaymentIntentDto implements PaymentIntentDto {
  const factory _PaymentIntentDto(
          {@JsonKey(name: 'id', includeIfNull: false) required String id,
          @JsonKey(name: 'amount') int? amount,
          @JsonKey(name: 'receipt_email') String? emailCustomer,
          @JsonKey(name: 'status') String? status,
          @JsonKey(name: 'created', fromJson: _fromJson) DateTime? timeStamp}) =
      _$_PaymentIntentDto;

  factory _PaymentIntentDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentIntentDto.fromJson;

  @override
  @JsonKey(name: 'id', includeIfNull: false)
  String get id;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(name: 'receipt_email')
  String? get emailCustomer;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'created', fromJson: _fromJson)
  DateTime? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$PaymentIntentDtoCopyWith<_PaymentIntentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
