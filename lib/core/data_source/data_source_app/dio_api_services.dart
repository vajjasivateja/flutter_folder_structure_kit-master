import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_structure/core/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/logger_dev.dart';
import '../data_source_model/network_request/network_request_body.dart';
import '../data_source_model/network_response/network_response.dart';

enum NetworkRequestType { GET, POST, PUT, PATCH, DELETE }

class NetworkRequest {
  const NetworkRequest({
    required this.type,
    required this.path,
    this.data,
    this.queryParams,
    this.headers,
    this.accessToken,
  });

  final NetworkRequestType type;
  final String path;
  final NetworkRequestBody? data;
  final Map<String, dynamic>? queryParams;
  final Map<String, String>? headers;
  final String? accessToken;
}

class _PreparedNetworkRequest<Model> {
  const _PreparedNetworkRequest(
      this.request,
      // this.parser,
      this.dio,
      this.headers,
      this.onSendProgress,
      this.onReceiveProgress,
      );

  final NetworkRequest request;

  // final Model Function(dynamic) parser;
  final Dio dio;
  final Map<String, dynamic> headers;
  final ProgressCallback? onSendProgress;
  final ProgressCallback? onReceiveProgress;
}

Future<NetworkResponse<Model>> executeRequest<Model>(_PreparedNetworkRequest preparedNetworkRequest) async {
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
    return NetworkResponse.ok(response.data);
  } on DioException catch (error) {
    logger.d('error from dioException: $error');

    /// here we detect is the wifi/mobile connection is turn on/off
    if (error.type == DioExceptionType.connectionError || error.type == DioExceptionType.connectionTimeout) {
      rethrow;
    }

    // final errorText = error.toString();
    final errorText = 'Something went wrong, please try again later';
    if (error.requestOptions.cancelToken != null && error.requestOptions.cancelToken!.isCancelled) {
      return NetworkResponse.noData(errorText, -111);
    }
    switch (error.response?.statusCode) {
      case 400:
        return NetworkResponse.badRequest(errorText, 400);
      case 401:
        return NetworkResponse.noAuth(errorText, 401);
      case 403:
        return NetworkResponse.noAccess(errorText, 403);
      case 404:
        return NetworkResponse.notFound(errorText, 404);
      case 409:
        return NetworkResponse.conflict(errorText, 409);
      default:
        return NetworkResponse.noData(errorText, -111);
    }
  } catch (error) {
    logger.d('error from Catch: $error');
    return NetworkResponse.noData(error.toString(), 0);
  }
}

class NetworkService {
  Dio? _dio;
  String baseUrl = "";
  String accessToken = "";
  final Map<String, String> _headers = <String, String>{};

  Future<Dio> _getDefaultDioClient() async {
    Dio dio = Dio()
      ..options.baseUrl = baseUrl
      ..options.headers = composeHeaders("")
      ..options.connectTimeout = const Duration(seconds: 5000) // 5 seconds
      ..options.receiveTimeout = const Duration(seconds: 3000); // 3 seconds
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Retrieve access token from SharedPreferences
          final prefs = await SharedPreferences.getInstance();
          String? accessToken = prefs.getString('access_token');

          // Attach access token to headers if available
          if (accessToken != null) {
            options.headers["Authorization"] = "Bearer $accessToken";
          }
          return handler.next(options); // Proceed with the request
        },
        onError: (error, handler) async {
          // Check if the error is due to an expired access token (401)
          if (error.response?.statusCode == 401) {
            try {
              // Refresh token logic
              await _refreshToken();

              // Retry the request with the new access token
              final Dio newDio = Dio();
              final prefs = await SharedPreferences.getInstance();
              String? newAccessToken = prefs.getString('access_token');
              error.requestOptions.headers["Authorization"] = "Bearer $newAccessToken";

              final retryResponse = await newDio.request(
                error.requestOptions.path,
                options: Options(
                  method: error.requestOptions.method,
                  headers: error.requestOptions.headers,
                ),
                data: error.requestOptions.data,
                queryParameters: error.requestOptions.queryParameters,
              );
              return handler.resolve(retryResponse);
            } catch (e) {
              // If refresh token fails, log out or take appropriate action
              // _logout();
            }
          }
          // Proceed with other errors
          return handler.next(error);
        },
      ),
    );
    return dio;
  }

  // Helper function to refresh the token
  Future<void> _refreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    String? refreshToken = prefs.getString('refresh_token');

    if (refreshToken == null) {
      throw Exception('No refresh token available');
    }

    try {
      final response = await _dio!.post('/auth/refresh', data: {
        'refresh_token': refreshToken,
      });

      // Extract and save new tokens
      String newAccessToken = response.data['access_token'];
      String newRefreshToken = response.data['refresh_token'];

      await prefs.setString('access_token', newAccessToken);
      await prefs.setString('refresh_token', newRefreshToken);
    } catch (e) {
      throw Exception('Failed to refresh token');
    }
  }

  Map<String, String> composeHeaders(String? token) {
    var accessToken = token;
    if (accessToken.isNotNullOrEmpty()) {
      _headers["Authorization"] = "Bearer $accessToken";
    }
    _headers['Content-Type'] = 'application/json';
    _headers['Accept'] = 'application/json';
    return _headers;
  }

  Future<NetworkResponse<Model>> execute<Model>(
      NetworkRequest request, {
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    _dio = await _getDefaultDioClient();
    final req = _PreparedNetworkRequest<Model>(
      request,
      _dio!,
      {
        ..._headers,
        ...(request.headers ?? {}),
      },
      onSendProgress,
      onReceiveProgress,
    );
    final result = await compute(executeRequest<Model>, req);
    return result;
  }
}
