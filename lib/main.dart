import 'package:task_6_depi/bloc/tasks_cubit/tasks_cubit.dart';
import 'package:task_6_depi/views/all_task_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
     const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TasksCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const AllTasksScreen(),
      ),
    );
  }
}