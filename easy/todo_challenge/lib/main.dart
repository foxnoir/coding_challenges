import 'package:flutter/material.dart';
import 'package:todo_challenge/l10n/app_localizations.dart';
import 'package:todo_challenge/to_do/presentation/todo_screen.dart';

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
      home: const TodoScreen(),
    );
  }
}
