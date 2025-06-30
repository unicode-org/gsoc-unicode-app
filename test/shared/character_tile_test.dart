import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/shared/character_tile.dart';

void main() {
  testWidgets('CharacterTile displays character, name, and code point', (
    tester,
  ) async {
    var tapped = false;
    await tester.pumpWidget(
      MaterialApp(
        home: CharacterTile(
          character: 'A',
          characterName: 'LATIN CAPITAL LETTER A',
          codePoint: 'U+0041',
          onTap: () => tapped = true,
        ),
      ),
    );

    expect(find.text('A'), findsOneWidget);
    expect(find.text('LATIN CAPITAL LETTER A'), findsOneWidget);
    expect(find.text('U+0041'), findsOneWidget);

    await tester.tap(find.byType(CharacterTile));
    expect(tapped, isTrue);
  });
}
