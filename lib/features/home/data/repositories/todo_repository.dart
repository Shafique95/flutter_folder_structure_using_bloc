
import '../../domain/todo.dart';
import '../data_sources/todo_data_source.dart';
import '../dtos/todo_dto.dart';
class TodoRepository {
  final TodoDataSource _dataSource = TodoDataSource(); // Assuming TodoDataSource is implemented
  Future<List<Todo>> fetchTodos() async {

    final List todoDtos = await _dataSource.fetchTodos();
    return todoDtos.map((dto) => TodoDto.dtoToToDo(dto)).toList();

  }

}
