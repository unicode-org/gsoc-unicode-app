import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/shared/custom_app_bar.dart';

void main() {
  testWidgets('CustomAppBar displays title and calls onTap for leading', (
    tester,
  ) async {
    var tapped = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          appBar: CustomAppBar(
            title: 'Test Title',
            leading: const Icon(Icons.menu),
            onTap: () => tapped = true,
          ),
        ),
      ),
    );

    expect(find.text('Test Title'), findsOneWidget);
    expect(find.byIcon(Icons.menu), findsOneWidget);
    await tester.tap(find.byIcon(Icons.menu));
    expect(tapped, isTrue);
  });
}
