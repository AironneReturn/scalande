import 'package:get/get.dart';

// import '../environment/env.dart';
import 'rest_api_interceptor.dart';

class RestApiClient extends GetConnect {
  final GetHttpClient client = GetHttpClient();

  RestApiClient({
    RestApiInterceptor? restApiInterceptor,
  }) {
    client.baseUrl = "https://api.stripe.com/v1";
    client.timeout = Duration(seconds: 15);
    client.addRequestModifier<Object?>(
        (request) => restApiInterceptor!.requestModifier(request));
    client.addResponseModifier((request, response) =>
        restApiInterceptor!.responseModifier(request, response));
  }
}
