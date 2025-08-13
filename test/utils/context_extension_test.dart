import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/utils/context_extension.dart';

void main() {
  group('ThemeContextExtension', () {
    testWidgets('textTheme returns correct TextTheme', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final textTheme = context.textTheme;
              expect(textTheme, isA<TextTheme>());
              expect(textTheme, isNotNull);
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('topPadding returns correct padding value', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final topPadding = context.topPadding;
              expect(topPadding, isA<double>());
              expect(topPadding, greaterThanOrEqualTo(5.0));
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('btmPadding returns correct padding value', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final btmPadding = context.btmPadding;
              expect(btmPadding, isA<double>());
              expect(btmPadding, greaterThanOrEqualTo(5.0));
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('textTheme matches Theme.of(context).textTheme',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final textTheme = context.textTheme;
              final themeTextTheme = Theme.of(context).textTheme;
              expect(textTheme, equals(themeTextTheme));
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('topPadding matches MediaQuery viewPadding.top + 5',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final topPadding = context.topPadding;
              final mediaQueryTopPadding =
                  MediaQuery.of(context).viewPadding.top + 5;
              expect(topPadding, equals(mediaQueryTopPadding));
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('btmPadding matches MediaQuery viewPadding.bottom + 5',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final btmPadding = context.btmPadding;
              final mediaQueryBottomPadding =
                  MediaQuery.of(context).viewPadding.bottom + 5;
              expect(btmPadding, equals(mediaQueryBottomPadding));
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('padding values are consistent across multiple calls',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final topPadding1 = context.topPadding;
              final topPadding2 = context.topPadding;
              final btmPadding1 = context.btmPadding;
              final btmPadding2 = context.btmPadding;

              expect(topPadding1, equals(topPadding2));
              expect(btmPadding1, equals(btmPadding2));
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('textTheme is consistent across multiple calls',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final textTheme1 = context.textTheme;
              final textTheme2 = context.textTheme;
              expect(textTheme1, equals(textTheme2));
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('padding values are non-negative', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final topPadding = context.topPadding;
              final btmPadding = context.btmPadding;

              expect(topPadding, greaterThanOrEqualTo(0.0));
              expect(btmPadding, greaterThanOrEqualTo(0.0));
              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('extension methods work in different widget contexts',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Column(
            children: [
              Builder(
                builder: (context) {
                  final textTheme = context.textTheme;
                  expect(textTheme, isA<TextTheme>());
                  return const SizedBox();
                },
              ),
              Builder(
                builder: (context) {
                  final topPadding = context.topPadding;
                  expect(topPadding, isA<double>());
                  return const SizedBox();
                },
              ),
              Builder(
                builder: (context) {
                  final btmPadding = context.btmPadding;
                  expect(btmPadding, isA<double>());
                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
      );
    });

    testWidgets('textTheme has required properties', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final textTheme = context.textTheme;

              // Check that textTheme has the expected properties
              expect(textTheme.displayLarge, isNotNull);
              expect(textTheme.displayMedium, isNotNull);
              expect(textTheme.displaySmall, isNotNull);
              expect(textTheme.headlineLarge, isNotNull);
              expect(textTheme.headlineMedium, isNotNull);
              expect(textTheme.headlineSmall, isNotNull);
              expect(textTheme.titleLarge, isNotNull);
              expect(textTheme.titleMedium, isNotNull);
              expect(textTheme.titleSmall, isNotNull);
              expect(textTheme.bodyLarge, isNotNull);
              expect(textTheme.bodyMedium, isNotNull);
              expect(textTheme.bodySmall, isNotNull);
              expect(textTheme.labelLarge, isNotNull);
              expect(textTheme.labelMedium, isNotNull);
              expect(textTheme.labelSmall, isNotNull);

              return const SizedBox();
            },
          ),
        ),
      );
    });

    testWidgets('padding values include the 5 pixel offset', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final topPadding = context.topPadding;
              final btmPadding = context.btmPadding;
              final mediaQueryTop = MediaQuery.of(context).viewPadding.top;
              final mediaQueryBottom =
                  MediaQuery.of(context).viewPadding.bottom;

              expect(topPadding, equals(mediaQueryTop + 5));
              expect(btmPadding, equals(mediaQueryBottom + 5));
              return const SizedBox();
            },
          ),
        ),
      );
    });
  });
}
