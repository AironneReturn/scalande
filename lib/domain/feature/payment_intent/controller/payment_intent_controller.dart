import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scalande_project/domain/feature/payment_intent/entities/payment_intent.dart';
import 'package:scalande_project/infrastructure/dtos/payment_intent_dto.dart';

import '../repositories/payment_intent_repositories.dart';

class PaymentIntentController {
  final PaymentIntentRepository? restaurantRepository;

  PaymentIntentController({
    @required this.restaurantRepository,
  });

  Future<List<PaymentIntent>> getAllPaymentIntent(
    {Map<String, dynamic>? queryParameters}
  ) async {
    try {
      return await restaurantRepository!.getAllPaymentIntent(queryParameters: queryParameters).then((value) => value.fold((l) {
        return [];
      }, (r) => r.toEntity));
    } catch (e) {
      print(e);
      throw (e);
    }
  }
}
