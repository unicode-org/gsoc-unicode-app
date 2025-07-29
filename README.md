# Unicode Flutter App

A cross-platform (Flutter) mobile application for exploring, searching, and learning about Unicode characters. Developed as part of Google Summer of Code for Unicode, Inc.

## Purpose

The Unicode Flutter App is designed to help users:
- Browse and search the entire Unicode character set
- View detailed information about each character (name, code point, block, plane, category, etc.)
- Save favorite characters for quick access
- Track and revisit recently viewed characters
- Test multilingual text rendering
- Explore Unicode blocks and categories

This app is ideal for developers, linguists, typographers, and anyone interested in Unicode and internationalization.

## Features
- **Unicode Explorer:** Search and filter Unicode characters by name, code point, block, or category.
- **Character Details:** View comprehensive metadata for each character.
- **Favorites:** Save and manage a list of favorite Unicode characters.
- **Recently Viewed:** Quickly access your recently viewed characters.
- **Multilingual Tester:** Test how different scripts and characters render on your device.
- **Settings:** Customize app preferences.
- **Cross-Platform:** Runs on Android, iOS, and Web.

## Project Structure

```
gsoc-unicode-app/
├── android/           # Android-specific files and configuration
├── assets/            # App assets (e.g., CSV data)
├── ios/               # iOS-specific files and configuration
├── lib/               # Main Dart source code
│   ├── app/           # App-level configuration, routing, theming
│   ├── features/      # Feature modules (Unicode explorer, etc.)
│   ├── gen/           # Generated code (e.g., asset references)
│   ├── i10n/          # Localization files
│   ├── models/        # Data models (e.g., UnicodeCharProperties)
│   ├── shared/        # Shared widgets/components
│   ├── storage/       # Persistent storage logic
│   ├── ui/            # UI screens and widgets
│   └── utils/         # Utility functions and extensions
├── test/              # Unit and widget tests
├── pubspec.yaml       # Flutter dependencies and metadata
├── README.md          # Project documentation
└── ...                # Other config and platform files
```

## Installation

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart (comes with Flutter)

### Steps
1. **Clone the repository:**
   ```sh
   git clone https://github.com/unicode-org/gsoc-unicode-app.git
   cd gsoc-unicode-app
   ```
2. **Install dependencies:**
   ```sh
   flutter pub get
   ```
3. **Run the app:**
   - For mobile:
     ```sh
     flutter run
     ```
   - For web:
     ```sh
     flutter run -d chrome
     ```

## Usage
- Use the search bar to find Unicode characters by name or code point.
- Tap a character to view its details.
- Save characters to your favorites for quick access.
- View your recently viewed characters from the home screen.
- Use the Multilingual Tester to check font/script rendering.
- Access settings to customize your experience.

## Contributing
A CLA is required to contribute to this project. Please refer to the [CONTRIBUTING.md](https://github.com/unicode-org/.github/blob/main/.github/CONTRIBUTING.md) file (or start a Pull Request) for more information.

## Copyright & Licenses

Copyright © 2023 Unicode, Inc. Unicode and the Unicode Logo are registered trademarks of Unicode, Inc. in the United States and other countries.

The project is released under [LICENSE](./LICENSE).
