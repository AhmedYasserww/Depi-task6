import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/task_model.dart';
import 'tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit() : super(const TasksState(tasks: []));

  void addTask(TaskModel task) {
    final updatedTasks = List<TaskModel>.from(state.tasks)..add(task);
    emit(state.copyWith(tasks: updatedTasks));
  }

  void toggleTask(String id) {
    final updatedTasks = state.tasks.map((task) {
      if (task.id == id) {
        return TaskModel(
          title: task.title,
          id: task.id,
          dateTime: task.dateTime,
          isChecked: !task.isChecked,
        );
      }
      return task;
    }).toList();

    emit(state.copyWith(tasks: updatedTasks));
  }
}
