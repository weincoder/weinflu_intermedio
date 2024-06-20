import 'package:app_clean_example/domain/models/user/gateway/user_gateway.dart';
import 'package:app_clean_example/domain/models/user/user.dart';
import 'package:app_clean_example/domain/usecase/user/user_use_case.dart';
import 'package:flutter/material.dart';

/// inyectamos el gateway y el caso de uso
class UserProvider extends ChangeNotifier {
  final UserGateway userGateway;
  final UserUseCase userUseCase;

  UserProvider({required this.userGateway})
      : userUseCase = UserUseCase(userGateway: userGateway);

  Future<User> getUser() async {
    return userUseCase.getUser();
  }
}