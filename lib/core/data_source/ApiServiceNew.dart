import 'dart:convert';

// import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../common/logger_dev.dart';
import '../utils/utils.dart';
import 'NetworkRequest.dart';
import 'NetworkService.dart';
import 'TokenManager.dart';
import 'base_api_services.dart';
import 'data_source_model/network_request/network_request_body.dart';
import 'data_source_model/network_response/network_response.dart';


class ApiServiceNew extends BaseApiService {
  final NetworkService _networkService;
  final SharedPreferences _prefs;
  final TokenManager _tokenManager;

  ApiServiceNew({
    required SharedPreferences prefs,
    required TokenManager tokenManager,
  })  : _prefs = prefs,
        _tokenManager = tokenManager,
        _networkService = NetworkService(
          prefs: prefs, // Pass prefs to NetworkService
          tokenManager: tokenManager, // Pass tokenManager to NetworkService
        );

  @override
  Future<NetworkResponse> getApiResponse(String endPoint, String? token, dynamic queryParams) async {
    try {
      NetworkResponse networkResponse = await _networkService.execute(
        NetworkRequest(type: NetworkRequestType.GET, path: endPoint, queryParams: queryParams.toJson()),
      );
      return networkResponse;
    } catch (ex) {
      return showErrorConnectionDialog(ex);
    }
  }

  @override
  Future<NetworkResponse> deleteApiResponse(String endPoint, String? token, dynamic queryParams) async {
    try {
      NetworkResponse networkResponse = await _networkService.execute(
        NetworkRequest(type: NetworkRequestType.DELETE, path: endPoint, queryParams: queryParams.toJson()),
      );
      return networkResponse;
    } catch (ex) {
      _logError("deleteApiResponse: $ex");
      return showErrorConnectionDialog(ex);
    }
  }

  @override
  Future<NetworkResponse> postApiResponse(String endPoint, String? token, dynamic data) async {
    try {
      NetworkResponse networkResponse = await _networkService.execute(
        NetworkRequest(
          type: NetworkRequestType.POST,
          path: endPoint,
          data: NetworkRequestBody.json(data.toJson()),
          accessToken: token,
        ),
      );
      return networkResponse;
    } catch (ex) {
      return showErrorConnectionDialog(ex);
    }
  }

  void _logError(String errorMessage) {
    logger.d('Error: $errorMessage');
  }

  void _logRequest(String url, String? token, dynamic queryParams, dynamic requestHeaders, int statusCode, dynamic response) {
    logger.d('Request:');
    logger.d('URL: $url');
    logger.d('Token: $token');
    logger.d('Body in Json: ${jsonEncode(queryParams)}');
    logger.d('Request Headers: ${requestHeaders.toString()}');
    logger.d('Response Status Code: $statusCode');
    logger.d('Response: ${response.toString()}');
  }
}
