import 'package:get/get.dart';
import 'package:scalande_project/domain/feature/payment_intent/controller/payment_intent_controller.dart';
import 'package:scalande_project/domain/feature/payment_intent/repositories/payment_intent_repositories.dart';
import 'package:scalande_project/infrastructure/repositories/payment_intent_repositories_impl.dart';

import '../../../infrastructure/api/rest_api_client.dart';
import 'edit_view_controller.dart';

class EditViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => EditViewController(Get.put<PaymentIntentController>(
        PaymentIntentController(
          restaurantRepository: Get.put<PaymentIntentRepository>(
            PaymentIntentRepositoryImpl(
              client: Get.find<RestApiClient>().client,
            ),
          ),
        ),
      )),
    );
  }
}
