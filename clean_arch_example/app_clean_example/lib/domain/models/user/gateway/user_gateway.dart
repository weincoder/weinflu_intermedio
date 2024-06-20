import 'package:app_clean_example/domain/models/user/user.dart';

/// Imaginate que es un especialista
/// en la obtención de datos de usuario
abstract class UserGateway {
  Future<User> getUser();
}