<a name="readme-top"></a>

<!-- Top Links Bar -->

[![LinkedIn](assets/badges/linkedin.svg)](https://www.linkedin.com/in/tanja-polz-5636401a5/)
[![X](assets/badges/x.svg)](https://twitter.com/_foxnoir_?lang=de)
[![Instagram](assets/badges/instagram.svg)](https://www.instagram.com/codeincouture/)

<!-- PROJECT LOGO -->
<br />

<div align="center">
  <img src="assets/logo.png" alt="Logo" width="179" height="179">
  <h1 align="center">Flutter Coding Challenges</h1>
  <p>
     Practice repo for timed Flutter exercises — from simple widgets to architecture-heavy features.
     Each challenge lives in its own folder; solutions and notes grow here over time.
  </p>
</div>

---

<div align="left">

[![Flutter](assets/badges/flutter.svg)](https://flutter.dev/)
[![Dart](assets/badges/dart.svg)](https://dart.dev/)
[![Bloc](assets/badges/bloc.svg)](https://pub.dev/packages/bloc)
[![Flutter Bloc](assets/badges/flutter_bloc.svg)](https://pub.dev/packages/flutter_bloc)
[![Dartz](assets/badges/dartz.svg)](https://pub.dev/packages/dartz)
[![Equatable](assets/badges/equatable.svg)](https://pub.dev/packages/equatable)
[![GetIt](assets/badges/get_it.svg)](https://pub.dev/packages/get_it)
[![Mocktail](assets/badges/mocktail.svg)](https://pub.dev/packages/mocktail)
[![Very Good Analysis](assets/badges/very_good.svg)](https://pub.dev/packages/very_good_analysis)
[![iOS](assets/badges/ios.svg)](https://developer.apple.com/ios/)

</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-this-repo">About This Repo</a>
      <ul>
        <li><a href="#goals">Goals</a></li>
        <li><a href="#how-a-challenge-works">How a Challenge Works</a></li>
      </ul>
    </li>
    <li>
      <a href="#difficulty-levels">Difficulty Levels</a>
      <ul>
        <li><a href="#easy">Easy</a></li>
        <li><a href="#easy-plus">Easy Plus</a></li>
        <li><a href="#medium">Medium</a></li>
        <li><a href="#hard">Hard</a></li>
      </ul>
    </li>
    <li>
      <a href="#challenge-index">Challenge Index</a>
      <ul>
        <li><a href="#easy-challenges">Easy Challenges</a></li>
        <li><a href="#easy-plus-challenges">Easy Plus Challenges</a></li>
        <li><a href="#medium-challenges">Medium Challenges</a></li>
        <li><a href="#hard-challenges">Hard Challenges</a></li>
      </ul>
    </li>
    <li><a href="#repository-structure">Repository Structure</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#run-a-challenge">Run a Challenge</a></li>
        <li><a href="#conventions-per-challenge">Conventions per Challenge</a></li>
      </ul>
    </li>
    <li><a href="#tech-stack">Tech Stack</a></li>
    <li><a href="#badges">Badges</a></li>
    <li><a href="#changelog">Changelog</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

---

## About This Repo

This repository collects **small, self-contained Flutter coding challenges**, grouped by difficulty.

**This file** is the **catalog only**: difficulty levels, short summaries, and links into each challenge.  
The **full task** lives in each challenge bundle’s **`README.md`** (e.g. [`easy/todo_challenge/README.md`](easy/todo_challenge/README.md)). After your attempt, fill in **`questions.md`** in the same folder.

[![iOS](assets/badges/ios.svg)](https://developer.apple.com/ios/)

<p align="right"><a href="#readme-top">back to top</a></p>

### Goals

1. **Build interview muscle** — solve problems under a time limit.
2. **Practice architecture decisions** — document *why*, not only *what*.
3. **Increase complexity gradually** — Easy → Easy Plus → Medium → Hard.
4. **Keep solutions reviewable** — one challenge bundle with starter + reference solution apps.

<p align="right"><a href="#readme-top">back to top</a></p>

### How a Challenge Works

Typical flow (e.g. with Cursor or a mentor):

1. **Briefing** — read **`README.md`** in the challenge folder (e.g. [`easy/todo_challenge/README.md`](easy/todo_challenge/README.md)).
2. **Implementation** — code in `<feature>_starter/` (e.g. [`todo_starter/`](easy/todo_challenge/todo_starter/)).
3. **Documentation** — fill in [`questions.md`](easy/todo_challenge/questions.md); compare with the solution app.
4. **Review** — feedback on structure, Flutter style, and trade-offs.
5. **Index update** — adjust the summary row in [Challenge Index](#challenge-index) (status, time spent).

<p align="right"><a href="#readme-top">back to top</a></p>

---

## Difficulty Levels

Challenges sit under **difficulty folders** (`easy/`, `medium/`, …). Each challenge uses a **descriptive folder name** (e.g. `todo_challenge/`), not numbered IDs like `easy_1`.

| **Folder**    | **Focus**                                                                 |
| ------------- | ------------------------------------------------------------------------- |
| **`easy/`**   | Widgets, local state, small UI apps, minimal dependencies.                |
| **`easy_plus/`** | Lists, forms, light refactoring, optional `ChangeNotifier`.            |
| **`medium/`** | Feature folders, services, tests, clearer layer separation.               |
| **`hard/`**   | Clean architecture patterns, Bloc, repositories, error handling, TDD.     |

<p align="right"><a href="#readme-top">back to top</a></p>

### Easy

- Single-screen or simple navigation.
- No Bloc / GetIt required unless noted in the challenge brief.
- Emphasis: readable widgets and a simple domain model (e.g. `Note`, `Task`).

<p align="right"><a href="#readme-top">back to top</a></p>

### Easy Plus

- Slightly larger scope (multiple screens or richer state).
- Start separating `models/`, `screens/`, `widgets/`.
- Optional: `ChangeNotifier`, simple validation.

<p align="right"><a href="#readme-top">back to top</a></p>

### Medium

- Feature-first folder layout.
- Unit tests with **mocktail** where specified.
- Repository-style abstractions or fake data sources.

<p align="right"><a href="#readme-top">back to top</a></p>

### Hard

- Domain / data / presentation layers (see [Acknowledgments](#acknowledgments)).
- State management (e.g. **Bloc**), DI (**GetIt**), `Either`-style errors when required.
- TDD-friendly: tests before or alongside implementation.

<p align="right"><a href="#readme-top">back to top</a></p>

---

## Challenge Index

> **One row per challenge.** Title links to the **full task** in that folder’s `README.md`. Keep summaries short here.

### Easy Challenges

| **Challenge** | **Summary** | **Time** | **Status** |
| ------------- | ----------- | -------- | ---------- |
| **[Tip Calculator Challenge](easy/tip_calculator_challenge/README.md)** | Tip calculator from scratch in `tip_calculator_starter/` | 30–40 min | 📋 Assigned |
| **[To-Do Challenge](easy/todo_challenge/README.md)** | To-do list from scratch in `todo_starter/` | 30 min | ✅ Done |

<p align="right"><a href="#readme-top">back to top</a></p>

### Easy Plus Challenges

| **ID**        | **Title** | **Folder**           | **Time** | **Status**     | **Notes** |
| ------------- | --------- | -------------------- | -------- | -------------- | --------- |
| easy_plus_1   | _TBD_     | `easy_plus/easy_plus_1/` | —    | ⬜ Not started | —         |

<p align="right"><a href="#readme-top">back to top</a></p>

### Medium Challenges

| **ID**    | **Title** | **Folder**          | **Time** | **Status**     | **Notes** |
| --------- | --------- | ------------------- | -------- | -------------- | --------- |
| medium_1  | _TBD_     | `medium/medium_1/`  | —        | ⬜ Not started | —         |

<p align="right"><a href="#readme-top">back to top</a></p>

### Hard Challenges

| **ID**  | **Title** | **Folder**        | **Time** | **Status**     | **Notes** |
| ------- | --------- | ----------------- | -------- | -------------- | --------- |
| hard_1  | _TBD_     | `hard/hard_1/`    | —        | ⬜ Not started | —         |

<p align="right"><a href="#readme-top">back to top</a></p>

---

## Repository Structure

```
coding_challenges/
├── assets/
│   ├── logo.png
│   └── badges/             # local README badges
├── easy/
│   ├── todo_challenge/
│   │   ├── README.md         # full task
│   │   ├── questions.md      # your notes after the attempt
│   │   ├── todo_starter/     # Flutter app (minimal starter)
│   │   └── todo/             # Flutter app (reference solution)
│   └── tip_calculator_challenge/
│       ├── README.md
│       ├── questions.md
│       ├── tip_calculator_starter/
│       └── tip_calculator/
├── easy_plus/                # next challenges (same layout)
├── medium/
├── hard/
├── README.md                 # this file — index + short summaries only
└── .gitignore
```

Each challenge bundle contains **two Flutter apps** (starter + solution) plus **`README.md`** and **`questions.md`** at the bundle level.

<p align="right"><a href="#readme-top">back to top</a></p>

---

## Getting Started

### Clone and prerequisites

- Flutter SDK installed ([flutter.dev](https://flutter.dev/))
- Clone this repository locally

```
git clone <your-repo-url>
cd coding_challenges
```

<p align="right"><a href="#readme-top">back to top</a></p>

### Run a Challenge

Pick a folder from the [Challenge Index](#challenge-index), then:

```
cd easy/todo_challenge/todo_starter   # or todo/ for the solution
flutter pub get
flutter run
```

To **start a new** challenge bundle:

```bash
cd easy
mkdir habit_tracker_challenge
cd habit_tracker_challenge

flutter create habit_tracker_starter --project-name habit_tracker_starter --platforms=ios
flutter create habit_tracker --project-name habit_tracker --platforms=ios

# Add README.md (task) + questions.md (template) at bundle level — see todo_challenge/
# Strip each starter to lib/main.dart + lib/habit_tracker_app.dart only
# Add a row to the Challenge Index above
```

<p align="right"><a href="#readme-top">back to top</a></p>

### Conventions per Challenge

Each challenge bundle under `easy/`, `medium/`, … follows the same layout:

| **File** | **Purpose** |
| -------- | ----------- |
| **`README.md`** (challenge bundle) | **Full task** (criteria, rubric, run commands). |
| **`questions.md`** | Your notes **after** the timed attempt (structure, trade-offs). |
| **`<feature>_starter/`** | Standalone Flutter app — minimal starter (`main.dart` + one file). |
| **`<feature>/`** | Standalone Flutter app — reference solution + tests. |

**Platform:** new challenge apps are **iOS only** (`flutter create … --platforms=ios`). Keeps boilerplate small; Android/web/desktop only when a brief explicitly requires them.

**Root `README.md`** = repo index only.

**Challenge bundle:** `easy/<name>_challenge/` with `README.md` + `questions.md` + two Flutter apps. No README inside `todo_starter/` or `todo/` — docs stay at bundle level.

When you **add a challenge**: copy layout from [`easy/todo_challenge/`](easy/todo_challenge/), write task in bundle `README.md`, questions template in `questions.md`.

After finishing, update that index row (status, time spent).

<p align="right"><a href="#readme-top">back to top</a></p>

---

## Tech Stack

### Build With

[![Flutter](assets/badges/flutter.svg)](https://flutter.dev/)
[![Dart](assets/badges/dart.svg)](https://dart.dev/)

### Packages (by difficulty — use when the brief says so)

[![Bloc](assets/badges/bloc.svg)](https://pub.dev/packages/bloc)
[![Dartz](assets/badges/dartz.svg)](https://pub.dev/packages/dartz)
[![Equatable](assets/badges/equatable.svg)](https://pub.dev/packages/equatable)
[![Flutter Bloc](assets/badges/flutter_bloc.svg)](https://pub.dev/packages/flutter_bloc)
[![GetIt](assets/badges/get_it.svg)](https://pub.dev/packages/get_it)
[![Mocktail](assets/badges/mocktail.svg)](https://pub.dev/packages/mocktail)
[![Very Good Analysis](assets/badges/very_good.svg)](https://pub.dev/packages/very_good_analysis)

<p align="right"><a href="#readme-top">back to top</a></p>

---

## Badges

Tech-stack and social badges live once in [`assets/badges/`](assets/badges/). After changing labels or colors:

```
python3 assets/badges/generate.py
```

Target URLs sit **on the badge line** (`[![Flutter](assets/badges/flutter.svg)](https://flutter.dev/)`). GitHub cannot import another file into a README, so there is no footer of `[flutter-url]:` refs. The href list is [`assets/badges/links.json`](assets/badges/links.json) when you add a badge.

Every badge is a vertical dark → mid → light gradient (same contrast as Instagram). The mid stop is the brand or palette color. Official colors stay official, except black — it is hard to see. Everything else uses purple, blue, turquoise, pink, or green — not black, orange, red, or yellow.

| File | Color (dark → mid → light) | Why |
| --- | --- | --- |
| `flutter.svg` | `#012F55` → `#02569B` → `#7BA7CB` | official Flutter |
| `dart.svg` | `#01406B` → `#0175C2` → `#7BB7DF` | official Dart |
| `bloc.svg` | `#343A5C` → `#5E6AA8` → `#ABB2D2` | blue-violet (replaces dark red) |
| `flutter_bloc.svg` | `#194A6A` → `#2E86C1` → `#92C0DF` | blue |
| `dartz.svg` | `#0F2B46` → `#1C4E80` → `#89A3BD` | blue |
| `equatable.svg` | `#294D3D` → `#4A8C6F` → `#A1C3B4` | green |
| `get_it.svg` | `#17564F` → `#2A9D8F` → `#90CCC5` | turquoise |
| `mocktail.svg` | `#4C3469` → `#8B5FBF` → `#C3ACDE` | app purple |
| `very_good.svg` | `#62184B` → `#B22C89` → `#D791C2` | Very Good Ventures |
| `ios.svg` | `#2A656C` → `#4DB8C4` → `#A2DAE0` | pastel turquoise |
| `linkedin.svg` | `#06386B` → `#0A66C2` → `#80AFDF` | official LinkedIn |
| `instagram.svg` | `#4C3469` → `#8B5FBF` → `#C3ACDE` | lilac |
| `x.svg` | `#456576` → `#7EB8D6` → `#BCDAEA` | pastel light blue |

<p align="right"><a href="#readme-top">back to top</a></p>

---

## Changelog

| **Date**   | **Change** |
| ---------- | ---------- |
| 2026-06-04 | Initial README: repo purpose, folder layout, placeholder challenge index. |
| 2026-06-04 | **To-Do Challenge** (`easy/todo_challenge/`): full brief in challenge README; root README = index only. |
| 2026-06-04 | Renamed from `easy_1` / Quick Notes → descriptive folder + to-do branding. |
| 2026-06-04 | Challenge bundle: separate Flutter apps `todo_starter/` + `todo/` under `todo_challenge/`. |
| 2026-06-04 | **Tip Calculator Challenge** (`easy/tip_calculator_challenge/`): starter + solution, iOS only. |
| 2026-06-04 | Challenge docs: one bundle `README.md` + `questions.md` per challenge (no per-app READMEs). |
| 2026-06-04 | Root README: To-Do marked done; iOS-only convention documented. |
| —          | _Add entries when challenges are completed or levels are added._ |

<p align="right"><a href="#readme-top">back to top</a></p>

---

## Acknowledgments

- [Flutter documentation](https://docs.flutter.dev/)
- [BloC](https://medium.com/flutter-community/flutter-bloc-for-beginners-839e22adb9f5)
- [clean architecture](https://dev.to/marwamejri/flutter-clean-architecture-1-an-overview-project-structure-4bhf)
- [Feature-first vs Layer-first Structure (Kody TechnoLab)](https://kodytechnolab.com/blog/layer-first-or-feature-first-flutter-project-structure/)
- [Flutter Project Structure (Code with Andrea)](https://codewithandrea.com/articles/flutter-project-structure/)
- [Mocktail](https://www.dbestech.com/tutorials/flutter-test-with-mocktail)
- [TDD](https://www.browserstack.com/guide/tdd-in-flutter)

<p align="right"><a href="#readme-top">back to top</a></p>
