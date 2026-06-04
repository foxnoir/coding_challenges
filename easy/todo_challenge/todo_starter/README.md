# To-Do — Starter

<p align="left">
  <a href="../README.md"><strong>← Challenge index</strong></a>
  ·
  <a href="../../README.md#easy-challenges"><strong>Easy index</strong></a>
</p>

| | |
| --- | --- |
| **Level** | Easy |
| **Time box** | **30 minutes** (hard cap) |
| **Stack** | Flutter SDK only — no extra packages, no Bloc / GetIt |
| **Package** | `todo_starter` |

## Scenario

Build a **single-screen** in-memory to-do list for a short standup or personal task capture. No backend, no persistence in this round.

## Deliverable

- Implement `TodoController` in `lib/presentation/controllers/todo_controller.dart`
- App runs with `flutter run`
- After the attempt: compare with [`../todo/`](../todo/README.md) and fill in the decisions section there

## Must have (acceptance criteria)

1. App bar title: **To-Do**
2. Text field + **Add** button; to-dos live **in memory** only
3. Ignore empty or whitespace-only input (trim before validate)
4. List shows **newest to-do first**
5. Each row shows text and creation time as **HH:mm** (local time)
6. Delete per row (`Icons.delete_outline`, key `delete-todo-{id}` — wired in starter)
7. Empty state: **No to-dos yet. Add one above.**

## Nice to have (only if time remains)

- `SnackBar` on add or delete
- `maxLength` on the input (e.g. 200) with counter
- Dismiss keyboard on add

## Out of scope

- Navigation, persistence, API, state-management packages
- Custom design system / heavy theming

## Starter code

| **Path** | **Status** |
| -------- | ---------- |
| `lib/data/models/todo.dart` | Given |
| `lib/presentation/controllers/todo_controller.dart` | **Implement** `addTodo` / `deleteTodo` |
| `lib/presentation/todo_screen.dart` | Given (UI) |
| `lib/presentation/widgets/` | Given |
| `lib/l10n/app_localizations.dart` | Keys & copy |

## Run

```bash
cd easy/todo_challenge/todo_starter
flutter pub get
flutter run
```

## Verify (manual)

Check the acceptance criteria above. Optional: run tests in the solution project:

```bash
cd ../todo && flutter test
```

## Evaluation rubric

| **Area** | **Weight** | **Looks for** |
| -------- | ---------- | ------------- |
| Correctness | 40% | Criteria above |
| Widget structure | 25% | Readable `build`, focused widgets |
| State | 20% | Sensible local state / `setState` |
| Communication | 15% | Clear notes in [`../todo/README.md`](../todo/README.md) |

## Submission checklist

- [ ] Stopped at 30 min (or noted honest overtime)
- [ ] `flutter analyze` passes in this project
- [ ] Decisions filled in [`../todo/README.md`](../todo/README.md)
- [ ] [Index row](../../../README.md#easy-challenges) updated

<p align="right"><a href="../README.md">↑ challenge index</a></p>
