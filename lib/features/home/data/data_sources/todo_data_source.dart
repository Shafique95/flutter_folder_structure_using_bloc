// data/data_sources/todo_data_source.dart
import '../dtos/todo_dto.dart';
class TodoDataSource {
  // Simulate API call or database access
  Future<List<TodoDto>> fetchTodos() async {
    // Replace this with actual data retrieval logic from an API or database
    await Future.delayed(Duration(seconds: 1));
    return [
      TodoDto(id: 1, title: 'Buy groceries', isCompleted: false),
      TodoDto(id: 2, title: 'Go to the gym', isCompleted: true),
      TodoDto(id: 3, title: 'Read a book', isCompleted: false),
    ];
  }
}

