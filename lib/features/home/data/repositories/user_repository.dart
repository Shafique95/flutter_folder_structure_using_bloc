

import '../../application/services.dart';
import '../../domain/user_model.dart';

class UserRepository {
  final UserService userService;

  UserRepository({required this.userService});

  // Method to get user data using the UserService and convert it to a User model
  Future<Type> getUserData(int userId) async {
    final userData = await userService.fetchUserData(userId);
    return User.fromJson(userData); // Assuming User has a named constructor fromJson()
  }
}
