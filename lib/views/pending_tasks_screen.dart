import 'package:task_6_depi/widgets/app_bottom_nav_bar.dart';
import 'package:task_6_depi/widgets/pending_task_view_body.dart';
import 'package:flutter/material.dart';

class PendingTasksScreen extends StatelessWidget {
  const PendingTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: const PendingTaskViewBody(),
      bottomNavigationBar: AppBottomNavBar(currentIndex: 1),
    );
  }
}
