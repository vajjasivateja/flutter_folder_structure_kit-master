import 'dart:convert';

// import 'package:connectivity_plus/connectivity_plus.dart';


import '../../common/logger_dev.dart';
import '../../errors/exceptions.dart';
import '../../utils/utils.dart';
import '../base_api_services.dart';
import '../data_source_model/network_request/network_request_body.dart';
import '../data_source_model/network_response/network_response.dart';
import 'dio_api_services.dart';

class ApiService extends BaseApiService {
  // final Connectivity _connectivity = Connectivity();
  final NetworkService _networkService = NetworkService();

  @override
  Future<NetworkResponse> getApiResponse(String endPoint, String? token, dynamic queryParams) async {
    try {
      // await _checkInternetConnection();
      NetworkResponse networkResponse = await _networkService.execute(
        NetworkRequest(type: NetworkRequestType.GET, path: endPoint, queryParams: queryParams.toJson()),
      );
      return networkResponse;
    } on APIException {
      rethrow;
    } catch (ex) {
      return showErrorConnectionDialog(ex);
    }
  }

  @override
  Future<NetworkResponse> deleteApiResponse(String endPoint, String? token, dynamic queryParams) async {
    try {
      // await _checkInternetConnection();
      NetworkResponse networkResponse = await _networkService.execute(
        NetworkRequest(type: NetworkRequestType.DELETE, path: endPoint, queryParams: queryParams.toJson()),
      );
      return networkResponse;
    } on APIException {
      rethrow;
    } catch (ex) {
      _logError("getGetApiResponse: $ex");
      return showErrorConnectionDialog(ex);
    }
  }

  @override
  Future<NetworkResponse> postApiResponse(String endPoint, String? token, dynamic data) async {
    try {
      // await _checkInternetConnection();
      NetworkResponse networkResponse = await _networkService.execute(
        NetworkRequest(
          type: NetworkRequestType.POST,
          path: endPoint,
          data: NetworkRequestBody.json(data.toJson()),
          accessToken: token,
        ),
      );
      return networkResponse;
    } on APIException {
      rethrow;
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
