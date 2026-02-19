import 'package:task_6_depi/bloc/add_tasks_cubit/add_tasks_cubit_cubit.dart';
import 'package:task_6_depi/bloc/add_tasks_cubit/add_tasks_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DatePickerField extends StatelessWidget {
  const DatePickerField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTaskCubit, AddTaskState>(
      builder: (context, state) {
        final cubit = context.read<AddTaskCubit>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Task Date",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: state.selectedDate == null
                    ? "10/20/24"
                    : "${state.selectedDate!.day}/${state.selectedDate!.month}/${state.selectedDate!.year}",
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_month),
                  onPressed: () {
                    cubit.pickDate(context);
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
