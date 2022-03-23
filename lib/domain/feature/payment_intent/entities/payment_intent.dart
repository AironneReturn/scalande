
import 'package:scalande_project/infrastructure/dtos/payment_intent_dto.dart';

class PaymentIntent {
  String? id;
  int? amount;
  String? emailCustomer;
  String? status;  
  DateTime? created;



  PaymentIntent({
    required this.id,
    this.amount,
    this.emailCustomer,
    this.status,
    this.created,
  });
}

extension OnPaymentIntent on PaymentIntent {
  PaymentIntent copyWith(
      {  String? id,
  int? amount,
  String? emailCustomer,
  String? status,  
  DateTime? created,
}) {
    return PaymentIntent(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        emailCustomer: emailCustomer ?? this.emailCustomer,
        status: status ?? this.status,
        created: created ?? this.created,
        );
  }

  PaymentIntentDto get toDto {
    return PaymentIntentDto(
      id: id ?? "",
      amount: amount,
      status: status,
      emailCustomer: emailCustomer,
      timeStamp: created,
    );
  }
}

extension OnListPaymentIntent on List<PaymentIntent> {
  List<PaymentIntentDto> get toDto {
    List<PaymentIntentDto> paymentIntentDtoList = [];

    this.forEach((entity) => paymentIntentDtoList.add(entity.toDto));
    return paymentIntentDtoList;
  }
}

extension OnListPaymentIntentDto on List<PaymentIntentDto> {
  List<PaymentIntent> get toEntity {
    List<PaymentIntent> paymentIntentList = [];

    this.forEach((dto) => paymentIntentList.add(dto.toEntity));
    return paymentIntentList;
  }
}

extension OnPaymentIntentDto on PaymentIntentDto {
  PaymentIntent get toEntity {
    return PaymentIntent(
      id: id,
      amount: amount,
      emailCustomer: emailCustomer,
      status: status,
      created: timeStamp,
    );
  }
}
