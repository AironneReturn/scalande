import 'package:dartz/dartz.dart';
import 'package:scalande_project/domain/feature/payment_intent/entities/payment_intent.dart';
import 'package:scalande_project/infrastructure/dtos/payment_intent_dto.dart';

abstract class PaymentIntentRepository {
  Future<Either<String, List<PaymentIntentDto>>> getAllPaymentIntent({Map<String, dynamic>? queryParameters});
}
