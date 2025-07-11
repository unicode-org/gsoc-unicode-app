import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/utils/context_extension.dart';

void main() {
  testWidgets('ThemeContextExtension returns correct textTheme and paddings', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) {
            final textTheme = context.textTheme;
            final top = context.topPadding;
            final btm = context.btmPadding;
            // Just check that they are not null and are numbers
            expect(textTheme, isA<TextTheme>());
            expect(top, isA<double>());
            expect(btm, isA<double>());
            return const SizedBox();
          },
        ),
      ),
    );
  });
}
