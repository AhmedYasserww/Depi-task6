import 'package:task_6_depi/bloc/add_tasks_cubit/add_tasks_cubit_cubit.dart';
import 'package:task_6_depi/bloc/add_tasks_cubit/add_tasks_cubit_state.dart';
import 'package:task_6_depi/bloc/tasks_cubit/tasks_cubit.dart';
import 'package:task_6_depi/models/task_model.dart';
import 'package:task_6_depi/widgets/category_selector.dart';
import 'package:task_6_depi/widgets/date_picker_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddTaskCubit(),
      child: const _AddTaskBody(),
    );
  }
}

class _AddTaskBody extends StatelessWidget {
  const _AddTaskBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTaskCubit, AddTaskState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFF7F8FA),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),

                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Center(
                    child: Text(
                      "Create New Task",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const Spacer(),

                  const Text(
                    "Task Name",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextFormField(
                    controller: state.titleController,
                    decoration: InputDecoration(
                      hintText: "Enter task name",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                  const CategorySelector(),
                  const SizedBox(height: 24),
                  const DatePickerField(),
                  const Spacer(),

                  GestureDetector(
                    onTap: () {
                      if (state.titleController.text.isEmpty ||
                          state.selectedDate == null) {
                        return;
                      }

                      final newTask = TaskModel(
                        title: state.titleController.text,
                        id: DateTime.now().toString(),
                        dateTime: state.selectedDate!,
                      );

                      context.read<TasksCubit>().addTask(newTask);
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: Text(
                          "Save Task",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}