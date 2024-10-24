import 'data_source_model/network_request/network_request_body.dart';

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

enum NetworkRequestType { GET, POST, PUT, PATCH, DELETE }