# To-Do Challenge

<p align="left">
  <a href="../../README.md#easy-challenges"><strong>← Easy challenges (index)</strong></a>
  ·
  <a href="questions.md"><strong>Questions</strong></a>
</p>

| | |
| --- | --- |
| **Level** | Easy |
| **Time box** | **30 minutes** (hard cap) |
| **Stack** | Flutter SDK only — no extra packages, no Bloc / GetIt |
| **Starter** | `todo_starter/` — **`lib/main.dart`** + **`lib/todo_app.dart`** only |
| **Solution** | `todo/` — reference implementation + tests |

## Projects

| Folder | Role |
| ------ | ---- |
| [`todo_starter/`](todo_starter/) | Your timed attempt — structure & implement from scratch |
| [`todo/`](todo/) | Compare after the attempt (`flutter test` runs here) |

## Scenario

Build a **single-screen** in-memory to-do list for a short standup or personal task capture. No backend, no persistence in this round.

## Deliverable

- **Structure the project yourself** while you build (folders, widgets, controller — not given)
- Full app meeting the criteria below; runs with `flutter run`
- Fill in [`questions.md`](questions.md) after your attempt
- Compare your code with [`todo/`](todo/)

Suggested layout (optional):

```text
lib/
├── main.dart
├── data/models/
├── domain/
└── presentation/
    ├── controllers/
    ├── widgets/
    └── todo_screen.dart
```

## Must have (acceptance criteria)

1. App bar title: **To-Do**
2. Text field + **Add** button; to-dos live **in memory** only
3. Ignore empty or whitespace-only input (trim before validate)
4. List shows **newest to-do first**
5. Each row shows text and creation time as **HH:mm** (local time)
6. Delete per row (`Icons.delete_outline`)
7. Empty state: **No to-dos yet. Add one above.**

## Nice to have (only if time remains)

- `SnackBar` on add or delete
- `maxLength` on the input (e.g. 200) with counter
- Dismiss keyboard on add
- `l10n` file for strings / widget keys

## Out of scope

- Navigation, persistence, API, state-management packages
- Custom design system / heavy theming

## Run

```bash
# Timed attempt
cd easy/todo_challenge/todo_starter
flutter pub get
flutter run

# Reference solution
cd ../todo
flutter pub get
flutter test
flutter run
```

## Evaluation rubric

| **Area** | **Weight** | **Looks for** |
| -------- | ---------- | ------------- |
| Correctness | 35% | Criteria above |
| Project structure | 25% | Sensible folders, separation of UI / logic |
| Widget quality | 20% | Readable widgets, not one giant `build` |
| State | 10% | Appropriate local state / controller |
| Communication | 10% | [`questions.md`](questions.md) filled in |

## Submission checklist

- [ ] Stopped at 30 min (or noted honest overtime)
- [ ] `flutter analyze` passes in `todo_starter/`
- [ ] [`questions.md`](questions.md) completed
- [ ] [Index row](../../README.md#easy-challenges) updated

<p align="right"><a href="questions.md">Questions →</a></p>
