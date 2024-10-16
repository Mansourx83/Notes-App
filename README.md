# Notes App

A simple and efficient notes application built using **Flutter**. The app allows users to:

- Add new notes
- Edit existing notes
- Use a dark-themed interface for a better user experience

The application leverages **Flutter Bloc** for state management and **Hive** for local database storage. The UI is modern, responsive, and optimized for performance.

## Features

- **Dark Theme**: The app uses a dark theme to reduce eye strain and provide a modern look.
- **Add and Edit Notes**: Users can easily add new notes and modify them at any time.
- **Local Storage**: Notes are saved locally on the device using the Hive database for fast and offline access.
- **Flutter Bloc**: The state management of the app is handled efficiently using the Bloc pattern.
- **Smooth Performance**: The app offers a fluid user experience with smooth navigation and fast note management.

## Technologies Used

This app is built with the following technologies and packages:

- **Flutter**: The main framework for building the cross-platform mobile application.
- **Flutter Bloc**: For state management across the app.
- **Hive**: A lightweight and fast key-value database for local storage.
- **Hive Flutter**: Integration of Hive with Flutter for storing notes locally.
- **Intl**: For date formatting and localization.
- **Modal Progress HUD**: To show loading indicators during operations like saving or editing notes.

## Packages Used

Here are the dependencies used in the project:

```yaml
dependencies:
  cupertino_icons: ^1.0.8
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.6
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  intl: ^0.19.0
  modal_progress_hud_nsn: ^0.5.1

dev_dependencies:
  build_runner: ^2.4.12
  flutter_lints: ^4.0.0
  flutter_test:
    sdk: flutter
  hive_generator: ^2.0.1
