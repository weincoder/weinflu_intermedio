
import 'package:app_clean_example/domain/models/user/gateway/user_gateway.dart';
import 'package:app_clean_example/domain/models/user/user.dart';

class UserUseCase {
  final UserGateway userGateway;

  UserUseCase({required this.userGateway});

  Future<User> getUser() {
    return userGateway.getUser();
  }
}