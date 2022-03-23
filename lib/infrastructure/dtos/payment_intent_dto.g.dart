// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_intent_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentIntentDto _$$_PaymentIntentDtoFromJson(Map<String, dynamic> json) =>
    _$_PaymentIntentDto(
      id: json['id'] as String,
      amount: json['amount'] as int?,
      emailCustomer: json['receipt_email'] as String?,
      status: json['status'] as String?,
      timeStamp: _fromJson(json['created'] as int),
    );

Map<String, dynamic> _$$_PaymentIntentDtoToJson(_$_PaymentIntentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'receipt_email': instance.emailCustomer,
      'status': instance.status,
      'created': instance.timeStamp?.toIso8601String(),
    };
