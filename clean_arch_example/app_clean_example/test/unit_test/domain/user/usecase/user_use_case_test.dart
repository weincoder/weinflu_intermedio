import 'package:app_clean_example/domain/models/user/gateway/user_gateway.dart';
import 'package:app_clean_example/domain/models/user/user.dart';
import 'package:app_clean_example/domain/usecase/user/user_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeUserApi extends UserGateway{
  @override
  Future<User> getUser() {
    return Future.value(User( name: 'John Doe',
    title: 'Mr', country: 'spain', email: 'user@example.com', phone: '11111111', cell: '11111', profilePicture: 'https://randomuser.me/api/portraits/men/75.jpg',));
  }
}

void main(){
  group('Testing UserUseCase', () {
    test('should return a correct user email', () async {
      // arrange
      final repository = FakeUserApi();
      final usecase = UserUseCase(userGateway: repository);
      const expectedEmail = 'user@example.com';
      // act
      final result = await usecase.getUser();
      // assert
      expect(result.email, expectedEmail);
    });
  });
}