import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scalande_project/domain/feature/payment_intent/controller/payment_intent_controller.dart';
import 'package:scalande_project/domain/feature/payment_intent/entities/payment_intent.dart';

class EditViewController extends GetxController with StateMixin {
  final PaymentIntentController paymentIntentController;

  EditViewController(this.paymentIntentController);

  PageController pageController = PageController();

  RxList<PaymentIntent> paymentIntent = <PaymentIntent>[].obs;

  final RxInt currentIndex = 0.obs;

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());

    paymentIntent.value = await paymentIntentController
        .getAllPaymentIntent(queryParameters: {"limit": "100"});

    
    super.onInit();
  }

  @override
  void onReady() async {
    
    paymentIntent.forEach((element) {
      print("tettt");
      print(element.created.toString());
    });
    change(state, status: RxStatus.success());
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void refresh() {
    super.refresh();
  }

  void newListAfter() async {
    change(null, status: RxStatus.loading());
    paymentIntent.value = await paymentIntentController.getAllPaymentIntent(
        queryParameters: {
          "limit": "100",
          "starting_after": paymentIntent.last.id
        }).then((value) {
      if (value.isEmpty) {
        return paymentIntent.value;
      }else{
        return value;
      }
    });
    change(state, status: RxStatus.success());
  }

  void newListBefore() async {
    change(null, status: RxStatus.loading());
    paymentIntent.value = await paymentIntentController.getAllPaymentIntent(
        queryParameters: {
          "limit": "100",
          "ending_before": paymentIntent.first.id
        }).then((value) {
      if (value.isEmpty) {
        return paymentIntent.value;
      }else{
        return value;
      }
    });
    change(state, status: RxStatus.success());
  }
}
