import 'package:dio/dio.dart';

import 'TokenManager.dart';

// Class to handle adding authentication tokens to requests and refreshing tokens on errors
class AuthInterceptor extends Interceptor {
  final TokenManager _tokenManager;
  final Future<void> Function() _refreshToken;

  AuthInterceptor(this._tokenManager, this._refreshToken); // Takes TokenManager and refresh token logic

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = _tokenManager.accessToken; // Get the access token from TokenManager.
    if (token != null) {
      options.headers["Authorization"] = "Bearer $token"; // Attach access token to headers.
    }
    return handler.next(options); // Continue the request.
  }

  @override
  Future<void> onError(DioError error, ErrorInterceptorHandler handler) async {
    if (error.response?.statusCode == 401) { // Check for token expiration (401).
      try {
        await _refreshToken(); // Attempt to refresh the token.

        final newAccessToken = _tokenManager.accessToken; // Fetch the new access token.
        error.requestOptions.headers["Authorization"] = "Bearer $newAccessToken"; // Update headers with the new token.

        final retryResponse = await Dio().request( // Retry the original request.
          error.requestOptions.path,
          options: Options(
            method: error.requestOptions.method,
            headers: error.requestOptions.headers,
          ),
          data: error.requestOptions.data,
          queryParameters: error.requestOptions.queryParameters,
        );
        return handler.resolve(retryResponse); // Resolve with the retry response.
      } catch (e) {
        await _tokenManager.clearTokens(); // Clear tokens if refreshing fails.
        // Optionally, navigate to login screen
      }
    }
    return handler.next(error); // Continue with other errors.
  }
}

