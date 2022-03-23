import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RestApiRepository {
  final GetHttpClient client;
  @protected
  final String _controller;

  String get controller => _controller;

  RestApiRepository({
    required String controller,
    required this.client,
  }) : _controller = controller;

  // Future<Either<InfrastructureValueFailure<String>, dynamic>>
  //     handlingGetResponse({
  //   required String queryRoute,
  //   Map<String, dynamic>? queryParameters,
  //   bool showError = true,
  // }) async {
  //   try {
  //     Response<Map<String, dynamic>> _response = await client.get(
  //       queryRoute,
  //       query: queryParameters,
  //     );
  //     return verifError(
  //       response: _response,
  //       showError: showError,
  //       method: _response.request?.method ?? 'get',
  //     );
  //   } catch (exception, stackTrace) {
  //     //await Sentry.captureException(
  //     //  exception,
  //     //  stackTrace: stackTrace,
  //     //);
  //     return left(catchClientNotFound(exception));
  //   }
  // }

  // Future<Either<InfrastructureValueFailure<String>, dynamic>>
  //     handlingPutResponse({
  //   required String queryRoute,
  //   dynamic body,
  //   bool showError = true,
  //   Map<String, dynamic>? queryParameters,
  //   Map<String, String>? headers,
  // }) async {
  //   try {
  //     Response<Map<String, dynamic>> _response = await client.put(
  //       queryRoute,
  //       body: body,
  //       headers: headers,
  //       query: queryParameters,
  //     );

  //     return verifError(
  //       response: _response,
  //       showError: showError,
  //       method: _response.request?.method ?? 'put',
  //     );
  //   } catch (exception, stackTrace) {
  //     //await Sentry.captureException(
  //     //  exception,
  //     //  stackTrace: stackTrace,
  //     //);
  //     return left(catchClientNotFound(exception));
  //   }
  // }

  // Future<Either<InfrastructureValueFailure<String>, dynamic>>
  //     handlingPatchResponse({
  //   required String queryRoute,
  //   required dynamic body,
  //   Map<String, dynamic>? queryParameters,
  //   bool showError = true,
  // }) async {
  //   try {
  //     Response<Map<String, dynamic>> _response = await client.patch(
  //       queryRoute,
  //       body: body,
  //     );

  //     return verifError(
  //       response: _response,
  //       showError: showError,
  //       method: _response.request?.method ?? 'patch',
  //     );
  //   } catch (exception, stackTrace) {
  //     //await Sentry.captureException(
  //     //  exception,
  //     //  stackTrace: stackTrace,
  //     //);
  //     return left(catchClientNotFound(exception));
  //   }
  // }

  // Future<Either<InfrastructureValueFailure<String>, dynamic>>
  //     handlingPostResponse({
  //   required String queryRoute,
  //   dynamic body,
  //   Map<String, dynamic>? queryParameters,
  //   bool showError = true,
  // }) async {
  //   try {
  //     Response<Map<String, dynamic>> _response = await client.post(
  //       queryRoute,
  //       body: body,
  //       query: queryParameters,
  //     );

  //     return verifError(
  //       response: _response,
  //       showError: showError,
  //       method: _response.request?.method ?? 'post',
  //     );
  //   } catch (exception, stackTrace) {
  //     //await Sentry.captureException(
  //     //  exception,
  //     //  stackTrace: stackTrace,
  //     //);
  //     return left(catchClientNotFound(exception));
  //   }
  // }

  // Future<Either<InfrastructureValueFailure<String>, dynamic>>
  //     handlingDeleteResponse({
  //   required String queryRoute,
  //   Map<String, dynamic>? queryParameters,
  //   Map<String, String>? headers,
  //   bool showError = true,
  // }) async {
  //   try {
  //     Response<Map<String, dynamic>> _response = await client.delete(queryRoute,
  //         query: queryParameters, headers: headers);

  //     return verifError(
  //       response: _response,
  //       showError: showError,
  //       method: _response.request?.method ?? 'delete',
  //     );
  //   } catch (exception, stackTrace) {
  //     //await Sentry.captureException(
  //     //  exception,
  //     //  stackTrace: stackTrace,
  //     //);
  //     return left(catchClientNotFound(exception));
  //   }
  // }
}
