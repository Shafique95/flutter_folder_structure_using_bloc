import '../../domain/user_model.dart';

class UserDto {
  final int id;
  final String name;
  final String email;
  final String? phone; // Additional property for data transfer

  UserDto({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
  });

  // Convert DTO to Domain Model
  User toUser() {
    return User(id: id, name: name, email: email);
  }

  // Convert Domain Model to DTO
  factory UserDto.fromUser(User user) {
    return UserDto(
      id: user.id,
      name: user.name,
      email: user.email,
    );
  }
}
