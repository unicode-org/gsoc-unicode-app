import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/ui/home/widgets/tool_box.dart';

void main() {
  testWidgets('ToolBox displays tool, description, and calls onTap', (
    tester,
  ) async {
    var tapped = false;
    await tester.pumpWidget(
      MaterialApp(
        home: ToolBox(
          tool: 'Test Tool',
          description: 'Test Description',
          icon: Icons.settings,
          onTap: () => tapped = true,
        ),
      ),
    );

    expect(find.text('Test Tool'), findsOneWidget);
    expect(find.text('Test Description'), findsOneWidget);
    expect(find.byIcon(Icons.settings), findsOneWidget);
    await tester.tap(find.byType(ToolBox));
    await tester.pumpAndSettle(const Duration(milliseconds: 300));
    log(tapped.toString());
    expect(tapped, isTrue);
  });
}
