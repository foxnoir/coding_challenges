import 'package:flutter/material.dart';

/// To-Do Challenge — start here.
///
/// This project is intentionally minimal (`main.dart` + this file).
/// **Part of the task:** structure the app yourself (e.g. `data/`, `domain/`,
/// `presentation/`, widgets, controller) and implement the full UI + logic.
///
/// Acceptance criteria: see README.md in the challenge folder (easy/todo_challenge/).
class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const _TodoPlaceholderScreen(),
    );
  }
}

class _TodoPlaceholderScreen extends StatelessWidget {
  const _TodoPlaceholderScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To-Do')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Implement the To-Do challenge here.\n'
            'Split into folders and widgets as you go.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
