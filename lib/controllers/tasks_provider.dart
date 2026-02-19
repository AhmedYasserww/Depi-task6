import 'package:flutter/material.dart';
import '../models/task_model.dart';

class TasksProvider extends ChangeNotifier {
  final List<TaskModel> _tasks = [];

  List<TaskModel> get tasks => _tasks;

  List<TaskModel> get pendingTasks =>
      _tasks.where((task) => !task.isChecked).toList();

  List<TaskModel> get completedTasks =>
      _tasks.where((task) => task.isChecked).toList();

  void toggleTask(String id) {
    final task = _tasks.firstWhere((task) => task.id == id);
    task.isChecked = !task.isChecked;
    notifyListeners();
  }

  void addTask(TaskModel task) {
    _tasks.add(task);
    notifyListeners();
  }
}
