import 'package:task_6_depi/widgets/completed_tasks_view_body.dart';
import 'package:task_6_depi/widgets/app_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class CompletedTasksScreen extends StatelessWidget {
  const CompletedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: const CompletedTasksBody(),
      bottomNavigationBar:  AppBottomNavBar(currentIndex: 2),
    );
  }
}