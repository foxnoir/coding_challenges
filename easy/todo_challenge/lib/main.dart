import 'package:flutter/material.dart';
import 'package:todo_challenge/screens/todo_screen.dart';

void main() {
  runApp(const TodoChallengeApp());
}

class TodoChallengeApp extends StatelessWidget {
  const TodoChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TodoScreen(),
    );
  }
}
