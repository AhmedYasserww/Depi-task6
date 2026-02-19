import 'package:task_6_depi/bloc/add_tasks_cubit/add_tasks_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit()
      : super(
          AddTaskState(
            selectedCategory: 'Personal',
            selectedDate: null,
            titleController: TextEditingController(),
          ),
        );

  final List<String> categories = [
    'Personal',
    'Work',
    'Health',
    'Family',
    'Learning',
  ];

  void changeCategory(String category) {
    emit(state.copyWith(selectedCategory: category));
  }

  void changeDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }

  Future<void> pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      changeDate(picked);
    }
  }

  @override
  Future<void> close() {
    state.titleController.dispose();
    return super.close();
  }
}
