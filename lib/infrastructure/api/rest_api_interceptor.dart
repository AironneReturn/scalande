import 'package:get/get.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import 'rest_api_logger.dart';

class RestApiInterceptor extends RestApiLogger {
  Request requestModifier(Request request) {
    // TODO Edit request here //
    request.headers.addAll({'Authorization': 'Bearer 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'});
    // ---------------------- //
    onRequestLogger(request);
    return request;
  }

  Response responseModifier(Request request, Response response) {
    // TODO Edit request here //

    // ---------------------- //
    onResponseLogger(response);
    return response;
  }
}
