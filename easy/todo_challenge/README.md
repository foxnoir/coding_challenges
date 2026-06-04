# To-Do Challenge

<p align="left">
  <a href="../../README.md#easy-challenges"><strong>← Easy challenges (index)</strong></a>
</p>

| | |
| --- | --- |
| **Level** | Easy |
| **Folder** | `easy/todo_challenge/` |
| **Time box** | **30 minutes** |

Two **separate Flutter apps** — no shared `lib/` folder:

| Project | Role | Open |
| ------- | ---- | ---- |
| **[`todo_starter/`](todo_starter/README.md)** | Task brief + starter code | `cd todo_starter` |
| **[`todo/`](todo/README.md)** | Reference solution + decisions | `cd todo` |

## Quick start

```bash
# Timed attempt
cd easy/todo_challenge/todo_starter
flutter pub get
flutter run

# Compare solution
cd ../todo
flutter pub get
flutter test
flutter run
```

## Layout (template for future challenges)

```text
easy/<name>_challenge/
├── README.md              ← this index
├── <feature>_starter/     ← full Flutter app, README = task
└── <feature>/             ← full Flutter app, README = solution + decisions
```

Example here: `todo_starter/` + `todo/`.

<p align="right"><a href="../../README.md#easy-challenges">↑ back to index</a></p>
