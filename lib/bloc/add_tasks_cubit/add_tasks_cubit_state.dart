import 'package:flutter/material.dart';

class AddTaskState {
  final String selectedCategory;
  final DateTime? selectedDate;
  final TextEditingController titleController;

  const AddTaskState({
    required this.selectedCategory,
    required this.selectedDate,
    required this.titleController,
  });

  AddTaskState copyWith({
    String? selectedCategory,
    DateTime? selectedDate,
  }) {
    return AddTaskState(
      selectedCategory: selectedCategory ?? this.selectedCategory,
      selectedDate: selectedDate ?? this.selectedDate,
      titleController: titleController,
    );
  }
}
