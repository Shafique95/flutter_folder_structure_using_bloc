class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  static Type fromJson(Map<String, dynamic> userData) {
    return User;
  }
}
