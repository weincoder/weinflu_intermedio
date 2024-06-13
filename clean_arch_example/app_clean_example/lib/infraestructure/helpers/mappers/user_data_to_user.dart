
import 'package:app_clean_example/domain/models/user/user.dart';
import 'package:app_clean_example/infraestructure/helpers/mappers/user_data.dart';

User userDataToUser(UserData userData) {
  final relevantUserData = userData.results[0];
  return User(
    name: relevantUserData.name.first,
    title: relevantUserData.name.title,
    country: relevantUserData.location.country,
    email: relevantUserData.email,
    phone: relevantUserData.phone,
    cell: relevantUserData.cell,
    profilePicture: relevantUserData.picture.large,
  );
}