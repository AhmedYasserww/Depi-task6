import '../../../models/task_model.dart';

class TasksState {
  final List<TaskModel> tasks;

  const TasksState({required this.tasks});

  List<TaskModel> get pendingTasks =>
      tasks.where((task) => !task.isChecked).toList();

  List<TaskModel> get completedTasks =>
      tasks.where((task) => task.isChecked).toList();

  TasksState copyWith({
    List<TaskModel>? tasks,
  }) {
    return TasksState(
      tasks: tasks ?? this.tasks,
    );
  }
}
