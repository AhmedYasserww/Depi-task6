import 'package:flutter/material.dart';
import '../models/task_model.dart';
import 'task_item.dart';

class TasksListView extends StatelessWidget {
  final List<TaskModel> tasks;

  const TasksListView({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return const Expanded(
        child: Center(
          child: Text("No tasks here"),
        ),
      );
    }

    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskItem(task: tasks[index]);
        },
      ),
    );
  }
}
