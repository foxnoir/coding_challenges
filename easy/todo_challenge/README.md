# To-Do Challenge

<p align="left">
  <a href="../../README.md#easy-challenges"><strong>← Easy challenges (index)</strong></a>
  ·
  <a href="DECISIONS.md"><strong>DECISIONS.md</strong></a>
</p>

| | |
| --- | --- |
| **Level** | Easy |
| **Folder** | `easy/todo_challenge/` |
| **Time box** | **30 minutes** (hard cap) |
| **Stack** | Flutter SDK only — no extra packages, no Bloc / GetIt |
| **Package** | `todo_challenge` |

## Scenario

Build a **single-screen** in-memory to-do list for a short standup or personal task capture. No backend, no persistence in this round.

## Deliverable

- Working Flutter app in this folder
- All widget tests in `test/widget_test.dart` passing
- [`DECISIONS.md`](DECISIONS.md) filled in after your attempt
- One-line update in the [Easy challenges table](../../README.md#easy-challenges) (status, time spent)

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
- Extra tests beyond the provided widget tests
- Custom design system / heavy theming

## Starter code

| **Path** | **Status** |
| -------- | ---------- |
| `lib/to_do/data/models/todo.dart` | Given |
| `lib/to_do/presentation/controllers/to_do_controller.dart` | Implement `TODO(challenge)` in `addTodo(text:)` / `deleteTodo(id:)` |
| `lib/to_do/presentation/todo_screen.dart` | Given (UI only) |
| `lib/main.dart` | Given |

Widget keys in the starter match the tests — do not rename without updating tests.

## Run

```bash
cd easy/todo_challenge
flutter pub get
flutter run
```

## Verify

```bash
flutter test
flutter analyze
```

## Evaluation rubric

| **Area** | **Weight** | **Looks for** |
| -------- | ---------- | ------------- |
| Correctness | 40% | Criteria above; `flutter test` green |
| Widget structure | 25% | Readable `build`, focused widgets |
| State | 20% | Sensible local state / `setState` |
| Communication | 15% | Clear [`DECISIONS.md`](DECISIONS.md) |

## Submission checklist

- [ ] Stopped at 30 min (or noted honest overtime)
- [ ] `flutter test` and `flutter analyze` pass
- [ ] [`DECISIONS.md`](DECISIONS.md) completed
- [ ] [Index row](../../README.md#easy-challenges) updated

## Follow-up (optional)

5-minute walkthrough: where state lives, what you would add in v2 (persistence, structure, tests).

<p align="right"><a href="../../README.md#easy-challenges">↑ back to index</a></p>
