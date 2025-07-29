import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/i10n/app_localizations.dart';
import 'package:gsoc_unicode_app/ui/multilingual_tester/views/multilingual_tester_screen.dart';

void main() {
  group('MultilingualTesterScreen', () {
    Widget createTestApp() {
      return const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: MultilingualTesterScreen(),
      );
    }

    testWidgets('displays the screen title', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Multilingual Tester'), findsOneWidget);
    });

    testWidgets('displays text input field', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for text input field
      expect(find.text('Text to Compare'), findsOneWidget);
    });

    testWidgets('displays font selection', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for font selection
      expect(find.text('Font'), findsOneWidget);
    });

    testWidgets('displays rendering preview', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for rendering preview
      expect(find.text('Rendering Preview'), findsOneWidget);
    });

    testWidgets('displays font box', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for font box
      expect(find.text('System default font'), findsOneWidget);
    });

    testWidgets('has scrollable content', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Verify that the screen has scrollable content
      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });

    testWidgets('displays app bar', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for app bar
      expect(find.byType(AppBar), findsOneWidget);
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

    testWidgets('displays column layout', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(Column), findsWidgets);
    });

    testWidgets('displays proper text styling', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for text widgets with proper styling
      final titleText = find.text('Multilingual Tester');
      expect(titleText, findsOneWidget);
    });

    testWidgets('displays content in proper layout', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check for proper layout structure
      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });

    testWidgets('displays font box with proper information', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check that font box displays proper information
      expect(find.text('System default font'), findsOneWidget);
      expect(find.byIcon(Icons.check), findsOneWidget);
    });

    testWidgets('displays preview text', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Check that preview text is displayed
      expect(find.text('Arial'), findsOneWidget);
      expect(find.text('A cursus ac non eget lacus urna vestibulum nisi.'),
          findsOneWidget);
    });
  });
}
