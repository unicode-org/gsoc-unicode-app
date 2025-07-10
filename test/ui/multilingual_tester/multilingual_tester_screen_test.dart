import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/shared/search_field.dart';
import 'package:gsoc_unicode_app/ui/tester/views/multilingual_tester_screen.dart';

void main() {
  testWidgets(
    '''MultilingualTesterScreen displays text to compare, font, rendering preview, SearchField''',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: MultilingualTesterScreen()),
      );
      expect(find.text('Text to Compare'), findsOneWidget);
      expect(find.text('Font'), findsOneWidget);
      expect(find.text('Rendering Preview'), findsOneWidget);
      expect(find.byType(SearchField), findsOneWidget);
    },
  );
}
