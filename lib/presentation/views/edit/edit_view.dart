import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:scalande_project/domain/feature/payment_intent/entities/payment_intent.dart';

import 'edit_view_controller.dart';

class EditView extends GetView<EditViewController> {
  EditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
        (state) => Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Obx(
                    () => Column(
                      children: List.generate(
                          controller.paymentIntent.length,
                          (index) => Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child:
                                        card(controller.paymentIntent[index]),
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  )
                                ],
                              )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.newListBefore();
                          },
                          icon: const Icon(Icons.chevron_left)),
                      IconButton(
                          onPressed: () {
                            controller.newListAfter();
                          },
                          icon: const Icon(Icons.chevron_right)),
                    ],
                  )
                ],
              ),
            )),
        onLoading: const Scaffold(
            backgroundColor: Colors.white,
            body: Center(
                child: CircularProgressIndicator(
              color: Colors.blue,
            ))));
  }

  Widget card(PaymentIntent paymentIntent) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(child: Center(child: Text(paymentIntent.emailCustomer ?? ""))),
        Expanded(child: Center(child: cardPayment(paymentIntent.status))),
        Expanded(
            child: Center(
                child: Text(
                    ((paymentIntent.amount ?? 100) / 100).toString() + "€"))),
         Expanded(
            child: Center(
                child: Text(DateFormat('dd/MM/yyyy kk:mm').format(paymentIntent.created?? DateTime.now(),),),))
      ],
    );
  }

  Widget cardPayment(String? code) {
    switch (code?.toLowerCase()) {
      case "succeeded":
        return Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 154, 214, 156),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Paiement Reussi",
              style: TextStyle(color: Color.fromARGB(255, 24, 80, 26)),
            ),
          ),
        );
      case "requires_payment_method":
        return Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 192, 192, 192),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Paiement en attente"),
          ),
        );
      case "canceled":
        return Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 206, 99, 99),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Paiement annulé",
              style: TextStyle(color: Color.fromARGB(255, 85, 15, 15)),
            ),
          ),
        );
      case "requires_confirmation":
        return Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 206, 99, 99),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Necessite une confirmation",
              style: TextStyle(color: Color.fromARGB(255, 85, 15, 15)),
            ),
          ),
        );
      default:
        return Container(
          color: Colors.red,
          child: Text(code ?? ""),
        );
    }
  }
}
