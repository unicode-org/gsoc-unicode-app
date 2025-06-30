import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/shared/search_field.dart';

void main() {
  testWidgets('SearchField displays hint and calls onChanged', (tester) async {
    String? changedValue;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SearchField(onChanged: (value) => changedValue = value),
        ),
      ),
    );

    expect(find.byType(TextField), findsOneWidget);
    expect(find.byType(SearchField), findsOneWidget);
    expect(find.text('Search by name or code'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'test');
    expect(changedValue, 'test');
  });
}
