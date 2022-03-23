import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scalande_project/infrastructure/dtos/payment_intent_dto.dart';

import '../../domain/feature/payment_intent/repositories/payment_intent_repositories.dart';
import '../api/rest_api_repository.dart';

class PaymentIntentRepositoryImpl extends RestApiRepository
    implements PaymentIntentRepository {
  PaymentIntentRepositoryImpl({
    @required GetHttpClient? client,
  }) : super(
          controller: '/payment_intents',
          client: client ?? GetHttpClient(),
        );

  @override
  Future<Either<String, List<PaymentIntentDto>>> getAllPaymentIntent(
      {Map<String, dynamic>? queryParameters}) async {
    Response<dynamic> response = Response();

    
      response = await client
          .get("$controller", query: queryParameters);

    print(response.body);
    if (response.hasError) {
      return left("problème lors de la récupération du restaurant");
    }

    return right(
      response.body["data"]
          .map<PaymentIntentDto>((e) => PaymentIntentDto.fromJson(e))
          .toList(),
    );
  }
}
