import 'package:task_6_depi/bloc/tasks_cubit/tasks_cubit.dart';
import 'package:task_6_depi/bloc/tasks_cubit/tasks_state.dart';
import 'package:task_6_depi/views/add_task_screen.dart';
import 'package:task_6_depi/widgets/custom_list_tile.dart';
import 'package:task_6_depi/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        final tasks = state.tasks;

        return Column(
          children: [
            const SizedBox(height: 100),

            CustomListTile(
              Title: "Tasks",
              subTitle: "October 10",
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AddTaskScreen()),
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 35),
                ),
              ),
            ),

            TasksListView(tasks: tasks),
          ],
        );
      },
    );
  }
}
