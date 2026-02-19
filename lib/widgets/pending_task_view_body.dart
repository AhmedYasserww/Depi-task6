import 'package:task_6_depi/bloc/tasks_cubit/tasks_cubit.dart';
import 'package:task_6_depi/bloc/tasks_cubit/tasks_state.dart';
import 'package:task_6_depi/widgets/custom_list_tile.dart';
import 'package:task_6_depi/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PendingTaskViewBody extends StatelessWidget {
  const PendingTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        final pendingTasks = state.pendingTasks;

        return Column(
          children: [
            const SizedBox(height: 100),

            CustomListTile(
              Title: "Pending",
              subTitle: "October 10",
              icon: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.deepOrange,
                child: Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),

            TasksListView(
              tasks: pendingTasks,
            ),
          ],
        );
      },
    );
  }
}
