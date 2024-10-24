import 'package:dio/dio.dart';

import 'AuthInterceptor.dart';
import 'TokenManager.dart';

class DioClient {
  final String baseUrl; // Base URL for API requests.
  final TokenManager _tokenManager; // Used to manage and retrieve stored tokens.
  final Future<void> Function() _refreshToken; // Reference to the refresh token logic.

  DioClient(this.baseUrl, this._tokenManager, this._refreshToken); // Constructor injects dependencies.

  Future<Dio> createDio() async {
    final dio = Dio() // Create a new Dio instance.
      ..options.baseUrl = baseUrl // Set the base URL.
      ..options.connectTimeout = const Duration(seconds: 5) // Connection timeout.
      ..options.receiveTimeout = const Duration(seconds: 3); // Receive timeout.

    dio.interceptors.add(AuthInterceptor(_tokenManager, _refreshToken)); // Add AuthInterceptor for token management.
    return dio; // Return the configured Dio instance.
  }
}
