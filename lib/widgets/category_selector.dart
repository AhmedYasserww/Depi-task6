import 'package:task_6_depi/bloc/add_tasks_cubit/add_tasks_cubit_cubit.dart';
import 'package:task_6_depi/bloc/add_tasks_cubit/add_tasks_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTaskCubit, AddTaskState>(
      builder: (context, state) {
        final cubit = context.read<AddTaskCubit>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Category",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              initialValue: state.selectedCategory,
              items: cubit.categories
                  .map(
                    (category) => DropdownMenuItem(
                      value: category,
                      child: Text(category),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  cubit.changeCategory(value);
                }
              },
              decoration: const InputDecoration(),
            ),
          ],
        );
      },
    );
  }
}
