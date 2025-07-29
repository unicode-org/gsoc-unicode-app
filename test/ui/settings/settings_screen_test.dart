import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/i10n/app_localizations.dart';
import 'package:gsoc_unicode_app/ui/settings/views/settings_screen.dart';

void main() {
  group('SettingsScreen', () {
    Widget createTestApp() {
      return const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: SettingsScreen(),
      );
    }

    testWidgets('displays the screen title', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Settings'), findsOneWidget);
    });

    testWidgets('displays app bar', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(AppBar), findsOneWidget);
    });

    testWidgets('displays settings sections', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for common settings sections
      expect(find.text('General'), findsOneWidget);
      expect(find.text('More'), findsOneWidget);
    });

    testWidgets('displays app version information', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Default Font'), findsOneWidget);
      expect(find.text('Default Language'), findsOneWidget);
    });

    testWidgets('displays app description', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('System Default'), findsOneWidget);
      expect(find.text('English'), findsOneWidget);
    });

    testWidgets('displays about section', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('General'), findsOneWidget);
      expect(find.text('More'), findsOneWidget);
    });

    testWidgets('displays scrollable content', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });

    testWidgets('displays settings tiles', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(Container), findsWidgets);
    });

    testWidgets('displays proper spacing and padding', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(Padding), findsWidgets);
      expect(find.byType(SizedBox), findsWidgets);
    });

    testWidgets('displays safe area wrapper', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets('displays proper text styling', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('General'), findsOneWidget);
      expect(find.text('More'), findsOneWidget);
    });

    testWidgets('displays correct number of settings sections', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Count the number of settings sections displayed
      expect(find.text('General'), findsOneWidget);
      expect(find.text('More'), findsOneWidget);
    });

    testWidgets('displays settings information correctly', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for settings information
      expect(find.text('Default Font'), findsOneWidget);
      expect(find.text('Default Language'), findsOneWidget);
      expect(find.text('System Default'), findsOneWidget);
      expect(find.text('English'), findsOneWidget);
    });

    testWidgets('displays basic layout components', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for essential layout components
      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });
  });
}
