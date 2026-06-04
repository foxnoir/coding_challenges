# Tip Calculator Challenge

<p align="left">
  <a href="../../README.md#easy-challenges"><strong>← Easy challenges (index)</strong></a>
  ·
  <a href="questions.md"><strong>Questions</strong></a>
</p>

| | |
| --- | --- |
| **Level** | Easy |
| **Time box** | **30–40 minutes** (hard cap) |
| **Stack** | Flutter SDK only — iOS target, no extra packages |
| **Starter** | `tip_calculator_starter/` — **`lib/main.dart`** + **`lib/tip_calculator_app.dart`** only |
| **Solution** | `tip_calculator/` — reference implementation + tests |

## Projects

| Folder | Role |
| ------ | ---- |
| [`tip_calculator_starter/`](tip_calculator_starter/) | Your timed attempt |
| [`tip_calculator/`](tip_calculator/) | Compare after the attempt |

## Scenario

Build a **single-screen tip calculator** for a quick restaurant bill split. All state stays **in memory** for this round.

## Deliverable

- **Structure the project yourself** (folders, widgets, controller, strings)
- Full calculator UI + logic; runs with `flutter run`
- Fill in [`questions.md`](questions.md) after your attempt
- Compare with [`tip_calculator/`](tip_calculator/)

Suggested layout (optional):

```text
lib/
├── main.dart
├── data/models/
├── l10n/
└── presentation/
    ├── controllers/
    ├── widgets/
    └── tip_calculator_screen.dart
```

## Must have (acceptance criteria)

1. App bar title: **Tip Calculator**
2. Text field for **bill amount** (numeric keyboard); label **Bill amount**
3. Three tip options as **ChoiceChips**: **10%**, **15%**, **20%** — **15% selected by default**
4. Show **Tip:** and **Total:** lines formatted to **2 decimals** (prefix **€**)
5. **Invalid bill** (empty, whitespace-only, non-numeric, zero, or negative) → **€0.00** for tip and total
6. Valid bill **100** with **15%** → Tip **€15.00**, Total **€115.00**
7. Changing tip % or bill amount **updates results immediately**

## Nice to have (only if time remains)

- `SnackBar` on invalid input
- Dismiss keyboard when tapping outside the field
- Widget keys for testing

## Out of scope

- Persistence, API, Bloc / Riverpod / GetIt
- Android / web / desktop (iOS only in this repo)

## Run

```bash
cd easy/tip_calculator_challenge/tip_calculator_starter
flutter pub get
flutter run

cd ../tip_calculator
flutter test
flutter run
```

## Evaluation rubric

| **Area** | **Weight** | **Looks for** |
| -------- | ---------- | ------------- |
| Correctness | 35% | Criteria above |
| Project structure | 25% | Clear layers / widgets |
| Widget quality | 20% | Logic out of `build` where possible |
| State | 10% | Controller or equivalent |
| Communication | 10% | [`questions.md`](questions.md) filled in |

## Submission checklist

- [ ] Stopped at 30–40 min (or noted honest overtime)
- [ ] `flutter analyze` passes in `tip_calculator_starter/`
- [ ] [`questions.md`](questions.md) completed
- [ ] [Index row](../../README.md#easy-challenges) updated

<p align="right"><a href="questions.md">Questions →</a></p>
