import 'package:task_6_depi/widgets/app_bottom_nav_bar.dart';
import 'package:task_6_depi/widgets/tasks_view_body.dart';
import 'package:flutter/material.dart';

class AllTasksScreen extends StatelessWidget {
  const AllTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: const TasksViewBody(),
      bottomNavigationBar:  AppBottomNavBar(currentIndex: 0),
    );
  }
}
