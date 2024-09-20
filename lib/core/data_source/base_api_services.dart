abstract class BaseApiService {
  Future<dynamic> getApiResponse(String url, String? token, dynamic queryParams);

  Future<dynamic> deleteApiResponse(String url, String? token, dynamic queryParams);

  Future<dynamic> postApiResponse(String url, String? token, dynamic data);
}
