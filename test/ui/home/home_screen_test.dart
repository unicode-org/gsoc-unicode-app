import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/i10n/app_localizations.dart';
import 'package:gsoc_unicode_app/ui/home/views/home_screen.dart';

void main() {
  group('HomeScreen', () {
    Widget createTestApp() {
      return const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: HomeScreen(),
      );
    }

    testWidgets('renders without crashing', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Just verify the widget renders without crashing
      expect(find.byType(HomeScreen), findsOneWidget);
    });

    testWidgets('displays the app title', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Unicode Tools'), findsOneWidget);
    });

    testWidgets('displays subtitle', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Choose a Tool'), findsOneWidget);
    });

    testWidgets('displays tool boxes for different features', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Unicode Character Visualizer'), findsOneWidget);
      expect(find.text('Multilingual Text Rendering Tester'), findsOneWidget);
    });

    testWidgets('displays tool descriptions', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Explore and visualize unicode characters'),
          findsOneWidget);
      expect(find.text('Test text rendering across multiple languages'),
          findsOneWidget);
    });

    testWidgets('displays tool icons', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.language), findsOneWidget);
    });

    testWidgets('displays app bar', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(AppBar), findsOneWidget);
    });

    testWidgets('displays scrollable content', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(SingleChildScrollView), findsOneWidget);
    });

    testWidgets('displays correct number of tool options', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Unicode Character Visualizer'), findsOneWidget);
      expect(find.text('Multilingual Text Rendering Tester'), findsOneWidget);
    });
  });
}
