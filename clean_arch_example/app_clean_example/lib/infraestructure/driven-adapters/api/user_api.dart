import 'dart:convert';

import 'package:app_clean_example/domain/models/user/gateway/user_gateway.dart';
import 'package:app_clean_example/domain/models/user/user.dart';
import 'package:app_clean_example/infraestructure/helpers/mappers/user_data.dart';
import 'package:app_clean_example/infraestructure/helpers/mappers/user_data_to_user.dart';
import 'package:http/http.dart';

enum FetchUserError {
  notFound,
  serverError,
  unknown,
}

class FetchUserException implements Exception {
  final FetchUserError error;
  final String message;

  FetchUserException(this.error, this.message);

  @override
  String toString() => 'FetchUserException: $message';
}

class UserApi extends UserGateway {
  final Client _httpClient;
  UserApi({required Client httpClient}) : _httpClient = httpClient;
  @override
  Future<User> getUser() async {
    final response = await _httpClient.get(
        Uri.parse('https://randomuser.me/api/'),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final userData =
          UserData.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      return userDataToUser(userData);
    } else {
      switch (response.statusCode) {
        case 404:
          throw FetchUserException(FetchUserError.notFound, 'User not found');
        case 500:
          throw FetchUserException(FetchUserError.serverError, 'Server error');
        default:
          throw FetchUserException(FetchUserError.unknown,
              'Failed to load User (code: ${response.statusCode})');
      }
    }
  }
}
