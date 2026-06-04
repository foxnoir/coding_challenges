/// Immutable in-memory to-do for the To-Do Challenge.
class Todo {
  const Todo({
    required this.id,
    required this.text,
    required this.createdAt,
  });

  final String id;
  final String text;
  final DateTime createdAt;
}
