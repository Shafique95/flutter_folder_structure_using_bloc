// domain/todo.dart

class Todo {
  final int id;
  final String title;
  final bool isCompleted;
  Todo({
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  static fromDto(dto) {}
}
