import 'package:app_clean_example/domain/models/user/gateway/user_gateway.dart';
import 'package:app_clean_example/domain/models/user/user.dart';

class UserFake extends UserGateway {
  @override
  Future<User> getUser() async {
    return Future.value(User(
      name: 'John Doe',
      email: 'example@example.com',
      phone: '312123',
      cell: '4213213',
      country: 'Spain',
      profilePicture: 'https://randomuser.me/api/portraits/men/21.jpg',
      title: 'mr',
    ));
  }
}
