import 'package:app_clean_example/domain/models/user/user.dart';

abstract class UserGateway {
  Future<User> getUser();
}