// data/dtos/todo_dto.dart

import '../../domain/todo.dart';

class TodoDto {
  final int id;
  final String title;
  final bool isCompleted;

  TodoDto({
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  // Factory method to create TodoDto from JSON
  factory TodoDto.fromJson(Map<String, dynamic> json) {
    return TodoDto(
      id: json['id'],
      title: json['title'],
      isCompleted: json['isCompleted'],
    );
  }
 static Todo dtoToToDo(Map<String, dynamic> map) {
    return Todo(title:map['title'] ,id: map['id'],isCompleted: map['isComplete']);
  }

  // Method to convert TodoDto to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
    };
  }
}
