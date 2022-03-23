
import 'package:scalande_project/infrastructure/dtos/serialization_normalizer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_intent_dto.freezed.dart';
part 'payment_intent_dto.g.dart';

@freezed
abstract class PaymentIntentDto with _$PaymentIntentDto {
  const factory PaymentIntentDto({
    @JsonKey(name: 'id', includeIfNull: false) required String id,
    @JsonKey(name: 'amount') int? amount,
    @JsonKey(name: 'receipt_email') String? emailCustomer,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'created', fromJson: _fromJson) DateTime? timeStamp,
  }) = _PaymentIntentDto;
  factory PaymentIntentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentDtoFromJson(json);
}

DateTime _fromJson(int int) => DateTime.fromMillisecondsSinceEpoch(int * 1000);

extension OnPaymentIntentJson on Map<String, dynamic> {
  PaymentIntentDto get toPaymentIntentDto {
    return PaymentIntentDto.fromJson(this);
  }
}

extension OnListPaymentIntentJson on List<Map<String, dynamic>> {
  List<PaymentIntentDto> get toPaymentIntentDto {
    return map<PaymentIntentDto>((Map<String, dynamic> e) => e.toPaymentIntentDto).toList();
  }
}
