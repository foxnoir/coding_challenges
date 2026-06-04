# To-Do — Solution

<p align="left">
  <a href="../README.md"><strong>← Challenge index</strong></a>
  ·
  <a href="../todo_starter/README.md"><strong>Starter (task)</strong></a>
  ·
  <a href="../../../README.md#easy-challenges"><strong>Easy index</strong></a>
</p>

| | |
| --- | --- |
| **Package** | `todo` |
| **Role** | Reference solution (copy of starter layout, controller implemented) |

## Run & verify

```bash
cd easy/todo_challenge/todo
flutter pub get
flutter test
flutter analyze
flutter run
```

---

## Decisions

> Compare your work in [`todo_starter/`](../todo_starter/) with this project.

### Time spent

- **Self-reported:** _e.g. 28 min (target 30 min)_

### State & structure

- **Where did you keep the to-do list? Why?**  
  I just saved it local. Sure I could have save it in shared memories to make it more realistic, but that's very bad pracitce and the task said local is fine.

- **What would you extract into separate widgets next?**  
  already done

### Trade-offs

- **What did you skip to stay in the time box?**  
  nothing

- **What would you add with another 30 minutes?**  
  proper state managment

### If you had to ship this

- **How would you persist data?**  
  when quick: local data base like hive, more time firebase, really more time proper backend

- **First extra test you would write?**  
  already done

---

## Solution notes (reference)

**`TodoController`** (`lib/presentation/controllers/todo_controller.dart`):

- In-memory `_todos`, unmodifiable getter
- `addTodo`: trim, reject empty, `insert(0, …)`, id via `microsecondsSinceEpoch`
- `deleteTodo`: `removeWhere`, notify only on change
- `formatTime`: static `HH:mm`

Tests: `test/presentation/` (controller + widget).

<p align="right"><a href="../todo_starter/README.md">↑ starter task</a></p>
