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
    <a href="#repository-structure"><strong>Explore the structure »</strong></a>
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
The README is the single source of truth: as you add or finish a challenge, extend the matching section in the [Challenge Index](#challenge-index).

<p align="right"><a href="#readme-top">back to top</a></p>

### Goals

1. **Build interview muscle** — solve problems under a time limit.
2. **Practice architecture decisions** — document *why*, not only *what*.
3. **Increase complexity gradually** — Easy → Easy Plus → Medium → Hard.
4. **Keep solutions reviewable** — one Flutter project per challenge folder.

<p align="right"><a href="#readme-top">back to top</a></p>

### How a Challenge Works

Typical flow (e.g. with Cursor or a mentor):

1. **Briefing** — read the task, acceptance criteria, and time box.
2. **Implementation** — code inside the challenge folder (`easy/easy_1/`, etc.).
3. **Documentation** — short `DECISIONS.md` in that folder (architecture choices).
4. **Review** — feedback on structure, Flutter style, and trade-offs.
5. **README update** — add a row to the challenge table below (status, link, notes).

<p align="right"><a href="#readme-top">back to top</a></p>

---

## Difficulty Levels

Challenges are organized in **top-level folders**. Naming inside each level: `easy_1`, `easy_2`, `medium_1`, …

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

> **Placeholder tables** — fill in a row when a challenge is assigned or completed.
> Link the **Folder** column to the project path (e.g. `easy/easy_1/`).

### Easy Challenges

| **ID**   | **Title**              | **Folder**        | **Time** | **Status**      | **Notes** |
| -------- | ---------------------- | ----------------- | -------- | --------------- | --------- |
| easy_1   | _Quick Notes_ (draft)  | `easy/easy_1/`    | 30 min   | 🚧 In progress  | —         |
| easy_2   | _TBD_                  | `easy/easy_2/`    | —        | ⬜ Not started  | —         |

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
│   ├── easy_1/             # Flutter project
│   └── easy_2/             # (add when needed)
├── easy_plus/
│   └── easy_plus_1/
├── medium/
│   └── medium_1/
├── hard/
│   └── hard_1/
├── README.md               # This file — challenge catalog + docs
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

cd easy/easy_1
flutter pub get
flutter run

```

To **start a new** challenge project:

```

cd easy
flutter create easy_2 --project-name easy_2
cd easy_2
flutter run

```

<p align="right"><a href="#readme-top">back to top</a></p>

### Conventions per Challenge

Every challenge folder should eventually contain:

| **File / folder** | **Purpose** |
| ----------------- | ----------- |
| `lib/`            | App source code |
| `test/`           | Widget / unit tests (when required by the brief) |
| `DECISIONS.md`    | Short log of architecture choices (state location, navigation, layers, etc.) |
| `README.md`       | Optional: challenge-specific brief or screenshots |

After finishing a challenge, update the matching row in [Challenge Index](#challenge-index) (status, time spent, one-line note).

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
