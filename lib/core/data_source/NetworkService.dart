import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/logger_dev.dart';
import 'DioClient.dart';
import 'NetworkRequest.dart';
import 'TokenManager.dart';
import 'data_source_model/network_response/network_response.dart';

// Class to prepare network requests before execution
class _PreparedNetworkRequest<Model> {
  const _PreparedNetworkRequest(
    this.request,
    this.dio,
    this.headers,
    this.onSendProgress,
    this.onReceiveProgress,
  );

  final NetworkRequest request; // The network request to be executed.
  final Dio dio; // The Dio instance for making the request.
  final Map<String, dynamic> headers; // Headers for the request.
  final ProgressCallback? onSendProgress; // Callback for tracking send progress.
  final ProgressCallback? onReceiveProgress; // Callback for tracking receive progress.
}

// The method that executes the network request
Future<NetworkResponse<Model>> _executeRequest<Model>(_PreparedNetworkRequest preparedNetworkRequest) async {
  try {
    dynamic body = preparedNetworkRequest.request.data?.whenOrNull(
      json: (data) => data,
      text: (data) => data,
    );

    logger.d('Executing network request:');
    logger.d('Path: ${preparedNetworkRequest.request.path}');
    logger.d('Type: ${preparedNetworkRequest.request.type}');
    logger.d('Headers: ${preparedNetworkRequest.headers}');
    logger.d('Body: $body');
    logger.d('QueryParams: ${preparedNetworkRequest.request.queryParams}');

    final response = await preparedNetworkRequest.dio.request(
      preparedNetworkRequest.request.path,
      data: body,
      queryParameters: preparedNetworkRequest.request.queryParams,
      options: Options(
        method: preparedNetworkRequest.request.type.name,
        headers: preparedNetworkRequest.headers,
      ),
      onSendProgress: preparedNetworkRequest.onSendProgress,
      onReceiveProgress: preparedNetworkRequest.onReceiveProgress,
    );

    logger.d('Response: ${response.data}');
    return NetworkResponse.ok(response.data); // Return successful response.
  } on DioException catch (error) {
    logger.d('Error from DioException: $error');

    // Handle connection errors specifically
    if (error.type == DioExceptionType.connectionError || error.type == DioExceptionType.connectionTimeout) {
      rethrow; // Optionally throw a custom error message
    }

    const errorText = 'Something went wrong, please try again later';
    if (error.requestOptions.cancelToken != null && error.requestOptions.cancelToken!.isCancelled) {
      return const NetworkResponse.noData(errorText, -111);
    }

    switch (error.response?.statusCode) {
      // Handle different status codes
      case 400:
        return const NetworkResponse.badRequest(errorText, 400);
      case 401:
        return const NetworkResponse.noAuth(errorText, 401);
      case 403:
        return const NetworkResponse.noAccess(errorText, 403);
      case 404:
        return const NetworkResponse.notFound(errorText, 404);
      case 409:
        return const NetworkResponse.conflict(errorText, 409);
      default:
        return const NetworkResponse.noData(errorText, -111);
    }
  } catch (error) {
    logger.d('Error from Catch: $error');
    return NetworkResponse.noData(error.toString(), 0);
  }
}

// Main service class for network operations
class NetworkService {
  late final SharedPreferences _prefs; // Hold SharedPreferences instance
  late final TokenManager _tokenManager; // TokenManager to manage tokens
  Dio? _dio;

  NetworkService({
    required SharedPreferences prefs,
    required TokenManager tokenManager,
  })  : _prefs = prefs,
        _tokenManager = tokenManager; // Constructor that sets the base URL and token manager.

  // Executes API requests using the Dio instance
  Future<NetworkResponse<Model>> execute<Model>(
    NetworkRequest request, {
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    _dio = await DioClient("", _tokenManager, _refreshToken).createDio(); // Create Dio with token management.

    final req = _PreparedNetworkRequest<Model>(
      request,
      _dio!,
      {
        'Authorization': "Bearer ${_tokenManager.accessToken}", // Attach the token to headers directly.
        'Content-Type': 'application/json', // Content-Type for the request.
        'Accept': 'application/json', // Accept header.
        ...(request.headers ?? {}), // Merge any additional headers from the request.
      },
      onSendProgress,
      onReceiveProgress,
    );

    final result = await _performRequest<Model>(req); // Call the separated request execution method.
    return result; // Return the result of the network operation.
  }

  // Separate method to perform the request execution
  Future<NetworkResponse<Model>> _performRequest<Model>(_PreparedNetworkRequest<Model> preparedNetworkRequest) {
    return compute(_executeRequest, preparedNetworkRequest); // Execute the request in a background thread.
  }

  // Refresh token logic
  Future<void> _refreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    String? refreshToken = _tokenManager.refreshToken; // Use TokenManager to get the refresh token.

    if (refreshToken == null) {
      throw Exception('No refresh token available');
    }

    try {
      final response = await _dio!.post('/auth/refresh', data: {
        'refresh_token': refreshToken,
      });

      String newAccessToken = response.data['access_token'];
      String newRefreshToken = response.data['refresh_token'];

      await _tokenManager.storeTokens(newAccessToken, newRefreshToken); // Store new tokens.
    } catch (e) {
      throw Exception('Failed to refresh token');
    }
  }
}
