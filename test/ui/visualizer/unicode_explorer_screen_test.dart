import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/blocs/unicode_characters_bloc.dart';
import 'package:gsoc_unicode_app/features/unicode_characters/cubits/all_recent_characters_cubit.dart';
import 'package:gsoc_unicode_app/i10n/app_localizations.dart';
import 'package:gsoc_unicode_app/ui/visualizer/views/unicode_explorer_screen.dart';
import '../../helpers/test_helpers.dart';

class FakeUnicodeCharPropertiesBloc extends UnicodeCharPropertiesBloc {
  FakeUnicodeCharPropertiesBloc(this._state) : super();
  final UnicodeCharPropertiesState _state;
  @override
  UnicodeCharPropertiesState get state => _state;
}

class FakeAllRecentCharactersCubit extends AllRecentCharactersCubit {
  FakeAllRecentCharactersCubit(this._state) : super();
  final AllRecentCharactersState _state;
  @override
  AllRecentCharactersState get state => _state;
}

void main() {
  group('UnicodeExplorerScreen', () {
    Widget createTestApp({
      UnicodeCharPropertiesState? unicodeState,
      AllRecentCharactersState? recentState,
    }) {
      return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: MultiBlocProvider(
          providers: [
            BlocProvider<UnicodeCharPropertiesBloc>.value(
              value: FakeUnicodeCharPropertiesBloc(
                unicodeState ?? const UnicodeCharPropertiesState.initial(),
              ),
            ),
            BlocProvider<AllRecentCharactersCubit>.value(
              value: FakeAllRecentCharactersCubit(
                recentState ?? const AllRecentCharactersState.initial(),
              ),
            ),
          ],
          child: const UnicodeExplorerScreen(),
        ),
      );
    }

    testWidgets('renders without crashing', (tester) async {
      await tester.pumpWidget(createTestApp());

      // Just verify the widget renders without crashing
      expect(find.byType(UnicodeExplorerScreen), findsOneWidget);
    });

    testWidgets('displays the screen title', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Unicode Explorer'), findsOneWidget);
    });

    testWidgets('displays search field', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(TextField), findsOneWidget);
      expect(find.byIcon(Icons.search), findsOneWidget);
    });

    testWidgets('displays loaded characters', (tester) async {
      final character = createTestCharacter();
      final fakeBloc = FakeUnicodeCharPropertiesBloc(
        UnicodeCharPropertiesState.loaded(
          characters: [character],
          pageNo: 1,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: MultiBlocProvider(
            providers: [
              BlocProvider<UnicodeCharPropertiesBloc>.value(value: fakeBloc),
              BlocProvider<AllRecentCharactersCubit>.value(
                value: FakeAllRecentCharactersCubit(
                  const AllRecentCharactersState.initial(),
                ),
              ),
            ],
            child: const UnicodeExplorerScreen(),
          ),
        ),
      );

      // Wait for the widget to build
      await tester.pumpAndSettle();

      expect(find.text('A'), findsWidgets);
      expect(find.text('LATIN CAPITAL LETTER A'), findsOneWidget);
      expect(find.text('U+0041'), findsOneWidget);
    });

    testWidgets('displays app bar', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(AppBar), findsOneWidget);
    });

    testWidgets('displays scrollable content', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.byType(CustomScrollView), findsOneWidget);
    });

    testWidgets('displays recently viewed section', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('Recently Viewed'), findsOneWidget);
    });

    testWidgets('displays all characters section', (tester) async {
      await tester.pumpWidget(createTestApp());

      expect(find.text('All Characters'), findsOneWidget);
    });

    testWidgets('displays character tiles when characters are loaded',
        (tester) async {
      final characters = [
        createTestCharacter(),
        createTestCharacter(character: 'B', name: 'LATIN CAPITAL LETTER B'),
      ];
      final fakeBloc = FakeUnicodeCharPropertiesBloc(
        UnicodeCharPropertiesState.loaded(
          characters: characters,
          pageNo: 1,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: MultiBlocProvider(
            providers: [
              BlocProvider<UnicodeCharPropertiesBloc>.value(value: fakeBloc),
              BlocProvider<AllRecentCharactersCubit>.value(
                value: FakeAllRecentCharactersCubit(
                  const AllRecentCharactersState.initial(),
                ),
              ),
            ],
            child: const UnicodeExplorerScreen(),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('A'), findsWidgets);
      expect(find.text('B'), findsWidgets);
      expect(find.text('LATIN CAPITAL LETTER A'), findsOneWidget);
      expect(find.text('LATIN CAPITAL LETTER B'), findsOneWidget);
    });

    testWidgets('displays no characters when list is empty', (tester) async {
      final fakeBloc = FakeUnicodeCharPropertiesBloc(
        const UnicodeCharPropertiesState.loaded(
          characters: [],
          pageNo: 1,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: MultiBlocProvider(
            providers: [
              BlocProvider<UnicodeCharPropertiesBloc>.value(value: fakeBloc),
              BlocProvider<AllRecentCharactersCubit>.value(
                value: FakeAllRecentCharactersCubit(
                  const AllRecentCharactersState.initial(),
                ),
              ),
            ],
            child: const UnicodeExplorerScreen(),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // Should still show the sections but no character tiles
      expect(find.text('All Characters'), findsOneWidget);
      expect(find.text('A'), findsNothing);
      expect(find.text('LATIN CAPITAL LETTER A'), findsNothing);
    });

    testWidgets('displays recently viewed characters', (tester) async {
      final recentCharacter = createTestCharacter();
      final fakeRecentCubit = FakeAllRecentCharactersCubit(
        AllRecentCharactersState.loaded(characters: [recentCharacter]),
      );

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: MultiBlocProvider(
            providers: [
              BlocProvider<UnicodeCharPropertiesBloc>.value(
                value: FakeUnicodeCharPropertiesBloc(
                  const UnicodeCharPropertiesState.initial(),
                ),
              ),
              BlocProvider<AllRecentCharactersCubit>.value(
                value: fakeRecentCubit,
              ),
            ],
            child: const UnicodeExplorerScreen(),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('Recently Viewed'), findsOneWidget);
      expect(find.text('A'), findsWidgets);
      expect(find.text('U+0041'), findsWidgets);
    });
  });
}
