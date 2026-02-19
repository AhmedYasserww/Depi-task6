class TaskModel {
  final String title;
  final String id;
  final DateTime dateTime;
  bool isChecked;

  TaskModel({
    required this.title,
    required this.id,
    required this.dateTime,
    this.isChecked = false,
  });
}
