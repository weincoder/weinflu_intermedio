
import 'package:app_clean_example/domain/models/user/gateway/user_gateway.dart';
import 'package:app_clean_example/domain/models/user/user.dart';

/// Imaginate el caso de uso como un jefe
/// que le pide a su especialista en obtener
class UserUseCase {
  final UserGateway userGateway;

  UserUseCase({required this.userGateway});

  Future<User> getUser() {
    return userGateway.getUser();
  }
}