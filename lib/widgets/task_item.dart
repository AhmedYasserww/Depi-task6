import 'package:task_6_depi/bloc/tasks_cubit/tasks_cubit.dart';
import 'package:task_6_depi/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskItem extends StatelessWidget {
  final TaskModel task;

  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.read<TasksCubit>().toggleTask(task.id);
      },
      leading: Checkbox(
        splashRadius: 20,
        activeColor: Colors.green,
        value: task.isChecked,
        onChanged: (_) {
          context.read<TasksCubit>().toggleTask(task.id);
        },
      ),
      title: Text(
        task.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: const Color(0xFF737373),
          fontSize: 15,
          decoration: task.isChecked
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      subtitle: Text(
        "${task.dateTime.hour.toString().padLeft(2, '0')}:${task.dateTime.minute.toString().padLeft(2, '0')}",
        style: const TextStyle(color: Color(0xFFA3A3A3), fontSize: 13),
      ),
    );
  }
}
