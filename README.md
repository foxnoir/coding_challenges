<a name="readme-top"></a>

<!-- Top Links Bar -->

[![LinkedIn][linkedin-shield]][linkedin-url]
[![X][x-shield]][x-url]
[![Instagram][instagram-shield]][instagram-url]

<!-- PROJECT LOGO -->
<br />

<div align="center">
  <img src="images/logo.png" alt="Logo" width="80" height="80">
  <h1 align="center">Flutter Coding Challenges</h1>

  <p align="left">
     Practice repo for timed Flutter exercises — from simple widgets to architecture-heavy features.
     Each challenge lives in its own folder; solutions and notes grow here over time.
  </p>
  
  <p align="left">
    <a href="#challenge-index"><strong>Challenge index »</strong></a>
    ·
    <a href="#repository-structure"><strong>Repository structure »</strong></a>
    <br/>
  </p>
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
    <li><a href="#changelog">Changelog</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

---

## About This Repo

This repository collects **small, self-contained Flutter coding challenges**, grouped by difficulty.

**This file** is the **catalog only**: difficulty levels, short summaries, and links into each challenge.  
The **full task** (criteria, rubric, run commands) lives in that challenge’s **[`README.md`](easy/todo_challenge/README.md)**. After your attempt, fill in **[`DECISIONS.md`](easy/todo_challenge/DECISIONS.md)** in the same folder.

<p align="right"><a href="#readme-top">back to top</a></p>

### Goals

1. **Build interview muscle** — solve problems under a time limit.
2. **Practice architecture decisions** — document *why*, not only *what*.
3. **Increase complexity gradually** — Easy → Easy Plus → Medium → Hard.
4. **Keep solutions reviewable** — one Flutter project per challenge folder.

<p align="right"><a href="#readme-top">back to top</a></p>

### How a Challenge Works

Typical flow (e.g. with Cursor or a mentor):

1. **Briefing** — open the challenge **[`README.md`](easy/todo_challenge/README.md)** (full task, time box, rubric).
2. **Implementation** — code in that Flutter folder (e.g. [`easy/todo_challenge/`](easy/todo_challenge/)).
3. **Documentation** — fill in [`DECISIONS.md`](easy/todo_challenge/DECISIONS.md) in the same folder.
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
| **[To-Do Challenge](easy/todo_challenge/README.md)** | In-memory to-do list; implement `TodoController.addTodo` / `deleteTodo` | 30 min | 📋 Assigned |

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

## **Repository Structure**

```

coding_challenges/
├── images/                 # README assets (e.g. logo)
├── easy/
│   └── todo_challenge/     # Flutter app — README.md = full task
│       ├── README.md         # complete challenge brief (start here)
│       ├── DECISIONS.md      # your notes after the attempt
│       ├── lib/
│       └── test/
├── easy_plus/                # next challenges (same layout)
├── medium/
├── hard/
├── README.md                 # this file — index + short summaries only
└── .gitignore

```

Each challenge folder is a **standalone Flutter app** created with `flutter create` (or copied from a previous challenge as a template).

<p align="right"><a href="#readme-top">back to top</a></p>

---

## **Getting Started**

### **Clone and prerequisites**

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

cd easy/todo_challenge
flutter pub get
flutter run

```

To **start a new** challenge project:

```

cd easy
flutter create habit_tracker --project-name habit_tracker
# add README.md (full task) + DECISIONS.md, then a row in the index above
cd habit_tracker
flutter run

```

<p align="right"><a href="#readme-top">back to top</a></p>

### Conventions per Challenge

Each folder under `easy/`, `medium/`, … is a **standalone Flutter app** with its own docs:

| **File** | **Purpose** |
| -------- | ----------- |
| **`README.md`** | **Complete challenge brief** (task, time box, criteria, rubric, commands). This is what you open when you start. |
| **`DECISIONS.md`** | Your notes *after* the timed attempt (one file per challenge folder). |
| `lib/`, `test/` | Implementation |

**Root `README.md`** = index with **short summaries + links** only — no duplicate full briefs.

**Naming:** prefer descriptive folders (`todo_challenge/`) over `easy_1`. The Dart package name matches the folder (`name: todo_challenge` in `pubspec.yaml`).

**`README.md` vs `CHALLENGE.md`:** we use **`README.md`** in the challenge folder so GitHub and IDEs show the task immediately when you open the folder. A separate `CHALLENGE.md` is optional if you ever want a tiny entry README + long task file — not needed for this repo.

**Flutter boilerplate (keep):**

| **File** | **Keep?** | **Why** |
| -------- | --------- | ------- |
| `.gitignore` (per project) | **Yes** | Ignores `build/`, `.dart_tool/`, platform artifacts — without it, git noise explodes. |
| `.metadata` | **Yes** | Flutter tooling uses it to detect project type/root; safe to commit. |
| `pubspec.lock` | Optional | This practice repo may commit it per app for reproducible `pub get`. |

When you **add a challenge**: `flutter create`, copy `README.md` / `DECISIONS.md` from [`easy/todo_challenge/`](easy/todo_challenge/), write the full task in the new `README.md`, add one row to [Easy Challenges](#easy-challenges).

After finishing, update that index row (status, time spent).

<p align="right"><a href="#readme-top">back to top</a></p>

---

## **Tech Stack**

### Build With

- [![Flutter][flutter]][flutter-url]
- [![Dart][dart]][dart-url]

### Packages (by difficulty — use when the brief says so)

[![Bloc][bloc]][bloc-url]
[![Dartz][dartz]][dartz-url]
[![Equatable][equatable]][equatable-url]
[![Flutter Bloc][flutter-bloc]][flutter-bloc-url]
[![GetIt][get-it]][get-it-url]
[![Mocktail][mocktail]][mocktail-url]
[![Very Good Analysis][very-good]][very-good-url]

<p align="right"><a href="#readme-top">back to top</a></p>

---

## **Changelog**

| **Date**   | **Change** |
| ---------- | ---------- |
| 2026-06-04 | Initial README: repo purpose, folder layout, placeholder challenge index. |
| 2026-06-04 | **To-Do Challenge** (`easy/todo_challenge/`): full brief in challenge README; root README = index only. |
| 2026-06-04 | Renamed from `easy_1` / Quick Notes → descriptive folder + to-do branding. |
| —          | _Add entries when challenges are completed or levels are added._ |

<p align="right"><a href="#readme-top">back to top</a></p>

---

## **Acknowledgments**

- [Flutter documentation](https://docs.flutter.dev/)
- [BloC](https://medium.com/flutter-community/flutter-bloc-for-beginners-839e22adb9f5)
- [clean architecture](https://dev.to/marwamejri/flutter-clean-architecture-1-an-overview-project-structure-4bhf)
- [Feature-first vs Layer-first Structure (Kody TechnoLab)](https://kodytechnolab.com/blog/layer-first-or-feature-first-flutter-project-structure/)
- [Flutter Project Structure (Code with Andrea)](https://codewithandrea.com/articles/flutter-project-structure/)
- [Mocktail](https://www.dbestech.com/tutorials/flutter-test-with-mocktail)
- [TDD](https://www.browserstack.com/guide/tdd-in-flutter)

<p align="right"><a href="#readme-top">back to top</a></p>

[bloc]: https://img.shields.io/badge/Bloc-8B0000.svg?style=for-the-badge&logo=bloc&logoColor=white
[bloc-url]: https://pub.dev/packages/bloc
[dart]: https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white
[dart-url]: https://dart.dev/
[dio]: https://img.shields.io/badge/Dio-FE5000.svg?style=for-the-badge&logo=internet-explorer&logoColor=white
[dio-url]: https://pub.dev/packages/dio
[dartz]: https://img.shields.io/badge/Dartz-1C4E80.svg?style=for-the-badge&logo=dart&logoColor=white
[dartz-url]: https://pub.dev/packages/dartz
[equatable]: https://img.shields.io/badge/Equatable-32CD32.svg?style=for-the-badge&logo=equatable&logoColor=white
[equatable-url]: https://pub.dev/packages/equatable
[firebase]: https://img.shields.io/badge/Firebase-039BE5?style=for-the-badge&logo=Firebase&logoColor=white
[firebase-url]: https://firebase.google.com/
[flutter]: https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=flutter&logoColor=white
[flutter-url]: https://flutter.dev/
[flutter-bloc]: https://img.shields.io/badge/Flutter%20Bloc-2E86C1.svg?style=for-the-badge&logo=flutter&logoColor=white
[flutter-bloc-url]: https://pub.dev/packages/flutter_bloc
[flutter-localizations]: https://img.shields.io/badge/Flutter%20Localizations-0170F3.svg?style=for-the-badge&logo=flutter&logoColor=white
[flutter-localizations-url]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[flutter-secure-storage]: https://img.shields.io/badge/Flutter%20Secure%20Storage-2F4F4F.svg?style=for-the-badge&logo=lock&logoColor=white
[flutter-secure-storage-url]: https://pub.dev/packages/flutter_secure_storage
[get-it]: https://img.shields.io/badge/GetIt-007ACC.svg?style=for-the-badge&logo=getit&logoColor=white
[get-it-url]: https://pub.dev/packages/get_it
[http]: https://img.shields.io/badge/HTTP-007BFF.svg?style=for-the-badge&logo=http&logoColor=white
[http-url]: https://pub.dev/packages/http
[hive]: https://img.shields.io/badge/Hive-FFB300.svg?style=for-the-badge&logo=hive&logoColor=white
[hive-url]: https://pub.dev/packages/hive
[injectable]: https://img.shields.io/badge/Injectable-009688.svg?style=for-the-badge&logo=injectable&logoColor=white
[injectable-url]: https://pub.dev/packages/injectable
[intl]: https://img.shields.io/badge/Intl-FFA500.svg?style=for-the-badge&logo=dart&logoColor=white
[intl-url]: https://pub.dev/packages/intl
[instagram-shield]: https://img.shields.io/badge/Instagram-%23E4405F.svg?style=for-the-badge&logo=instagram&logoColor=white
[instagram-url]: https://www.instagram.com/codeincouture/
[license-shield]: https://img.shields.io/badge/License-MIT-%23000000.svg?style=for-the-badge&logo=license&logoColor=white
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/LinkedIn-%230A66C2.svg?style=for-the-badge&logo=linkedin&logoColor=white
[linkedin-url]: https://www.linkedin.com/in/tanja-polz-5636401a5/
[mappable]: https://img.shields.io/badge/Dart%20Mappable-008080.svg?style=for-the-badge&logo=dart&logoColor=white
[mappable-url]: https://pub.dev/packages/dart_mappable
[mockapi]: https://img.shields.io/badge/MockAPI-9cf.svg?style=for-the-badge&logo=api&logoColor=white
[mockapi-url]: https://mockapi.io/projects
[mocktail]: https://img.shields.io/badge/Mocktail-blue.svg?style=for-the-badge&logo=dart&logoColor=white
[mocktail-url]: https://pub.dev/packages/mocktail
[twitter-shield]: https://img.shields.io/badge/Twitter-%231DA1F2.svg?style=for-the-badge&logo=twitter&logoColor=white
[twitter-url]: https://twitter.com/_foxnoir_?lang=de
[very-good]: https://img.shields.io/badge/Very%20Good%20Analysis-B22C89.svg?style=for-the-badge&logo=verygood&logoColor=white
[very-good-url]: https://pub.dev/packages/very_good_analysis
[x-shield]: https://img.shields.io/badge/-%23000000.svg?style=for-the-badge&logo=x&logoColor=white
[x-url]: https://twitter.com/_foxnoir_?lang=de
