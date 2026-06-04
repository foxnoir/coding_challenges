import 'package:flutter/material.dart';
import 'package:todo_starter/l10n/app_localizations.dart';
import 'package:todo_starter/presentation/todo_screen.dart';

void main() {
  runApp(const TodoStarterApp());
}

class TodoStarterApp extends StatelessWidget {
  const TodoStarterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: l10n.materialAppTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TodoScreen(),
    );
  }
}
