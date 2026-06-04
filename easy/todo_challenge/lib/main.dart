import 'package:flutter/material.dart';
import 'package:todo_challenge/l10n/app_localizations.dart';
import 'package:todo_challenge/todo/presentation/todo_screen.dart';
// Reference solution: import
// package:todo_challenge/todo_solution/presentation/todo_solution_screen.dart';

void main() {
  runApp(const TodoChallengeApp());
}

class TodoChallengeApp extends StatelessWidget {
  const TodoChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: l10n.materialAppTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      // Challenge: const TodoScreen()
      // Solution:  const TodoSolutionScreen()
      home: const TodoScreen(),
    );
  }
}
