import 'package:task_6_depi/views/complete_tak_screen.dart';
import 'package:task_6_depi/views/pending_tasks_screen.dart';
import 'package:task_6_depi/views/all_task_screen.dart';
import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
   AppBottomNavBar({super.key, required this.currentIndex});

  final int currentIndex;

  final List<String> _tabs = ['All', 'Pending', 'Completed'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 15,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_tabs.length, (index) {
          final isSelected = currentIndex == index;

          return GestureDetector(
            onTap: () {
              if (index == currentIndex) return;

              Widget page;
              if (index == 0) {
                page = const AllTasksScreen();
              } else if (index == 1) {
                page = const PendingTasksScreen();
              } else {
                page = const CompletedTasksScreen();
              }

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => page),
              );
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              padding: const EdgeInsets.symmetric(
                  horizontal: 22, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? Colors.black : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                _tabs[index],
                style: TextStyle(
                  color:
                  isSelected ? Colors.white : const Color(0xFF8E8E93),
                  fontWeight:
                  isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
