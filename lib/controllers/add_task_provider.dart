import 'package:flutter/material.dart';

class AddTaskProvider extends ChangeNotifier {
  final TextEditingController titleController = TextEditingController();

  String _selectedCategory = 'Personal';
  DateTime? _selectedDate;

  String get selectedCategory => _selectedCategory;
  DateTime? get selectedDate => _selectedDate;

  final List<String> categories = [
    'Personal',
    'Work',
    'Health',
    'Family',
    'Learning',
  ];

  void changeCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void changeDate(DateTime date) {
    _selectedDate = date;
    notifyListeners();
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
  void dispose() {
    titleController.dispose();
    super.dispose();
  }
}
