import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Class responsible for managing access and refresh tokens
class TokenManager {
  final SharedPreferences _prefs;

  TokenManager(this._prefs); // Takes SharedPreferences instance to manage tokens.

  String? get accessToken => _prefs.getString('access_token'); // Fetch the stored access token.
  String? get refreshToken => _prefs.getString('refresh_token'); // Fetch the stored refresh token.

  Future<void> storeTokens(String accessToken, String refreshToken) async {
    await _prefs.setString('access_token', accessToken); // Store new access token.
    await _prefs.setString('refresh_token', refreshToken); // Store new refresh token.
  }

  Future<void> clearTokens() async {
    await _prefs.remove('access_token'); // Remove access token (e.g., when logging out).
    await _prefs.remove('refresh_token'); // Remove refresh token.
  }
}
