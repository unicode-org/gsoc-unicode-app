import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/shared/shrinkable_button.dart';

void main() {
  testWidgets('ShrinkableButton calls onTap when tapped', (tester) async {
    var tapped = false;
    await tester.pumpWidget(
      MaterialApp(
        home: ShrinkableButton(
          onTap: () => tapped = true,
          child: const Text('Tap me'),
        ),
      ),
    );

    expect(find.text('Tap me'), findsOneWidget);
    await tester.tap(find.byType(ShrinkableButton));
    await tester.pumpAndSettle(const Duration(milliseconds: 300));
    expect(tapped, isTrue);
  });
}
