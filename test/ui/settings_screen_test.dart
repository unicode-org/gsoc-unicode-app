import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/ui/settings/views/settings_screen.dart';

void main() {
  testWidgets(
    'SettingsScreen displays general and more sections and settings tiles',
    (tester) async {
      await tester.pumpWidget(const MaterialApp(home: SettingsScreen()));
      expect(find.text('General'), findsOneWidget);
      expect(find.text('More'), findsOneWidget);
      expect(find.text('System Default'), findsOneWidget);
      expect(find.text('English'), findsOneWidget);
    },
  );
}
