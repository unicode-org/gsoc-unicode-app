/// Screen displaying detailed information about a single Unicode character.
///
/// Allows users to view character metadata, font rendering, and save/remove the character.
library;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/models/models.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// The screen that shows details for a single Unicode character.
class CharacterDetailScreen extends StatelessWidget {
  /// Creates a [CharacterDetailScreen] for the given [character].
  const CharacterDetailScreen({super.key, required this.character});

  /// The Unicode character to display details for.
  final UnicodeCharacter character;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => RecentlyViewedCharacterCubit(
            allRecentCharactersCubit: context.read(),
          ),
        ),
        BlocProvider(
          lazy: false,
          create: (context) =>
              SaveCharacterCubit(savedCharactersCubit: context.read()),
        ),
        BlocProvider(
          lazy: false,
          create: (context) =>
              RemoveSavedCharacterCubit(savedCharactersCubit: context.read()),
        ),
      ],
      child: _CharacterDetailScreen(character: character),
    );
  }
}

/// Internal widget for displaying character details and handling UI logic.
class _CharacterDetailScreen extends HookWidget {
  /// Creates an internal [_CharacterDetailScreen] for the given [character].
  const _CharacterDetailScreen({required this.character});

  /// The Unicode character to display details for.
  final UnicodeCharacter character;

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocalizations;
    final savedCharacters =
        context.watch<SavedCharactersCubit>().state.characters;
    final savedCharacter = useState<bool>(savedCharacters.contains(character));
    final plane = character.plane;
    final match = RegExp(r'\(([^)]+)\)').firstMatch(plane);
    final mainPlane = match != null ? match.group(1) : '';

    useEffect(
      () {
        context.read<SavedCharactersCubit>().getSavedCharacters();
        context
            .read<RecentlyViewedCharacterCubit>()
            .saveRecentlyViewedCharacter(
              character: character,
            );
        return null;
      },
      [],
    );

    return Scaffold(
      backgroundColor: AppTheme.screenShade,
      appBar: CustomAppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () async {
                if (savedCharacter.value) {
                  await context
                      .read<RemoveSavedCharacterCubit>()
                      .removeCharacter(character: character);
                } else {
                  await context.read<SaveCharacterCubit>().saveCharacter(
                        character: character,
                      );
                }
                savedCharacter.value = !savedCharacter.value;
              },
              child: Icon(
                savedCharacter.value
                    ? Icons.bookmark_sharp
                    : Icons.bookmark_border,
                size: 32,
                color: savedCharacter.value ? Colors.blue : Colors.black,
              ),
            ),
          ),
        ],
        title: character.character,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              locale.characterInfo,
              style: GoogleFonts.notoSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppTheme.whiteShade),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InformationTile(
                    detail: locale.name,
                    info: character.characterName,
                  ),
                  InformationTile(
                    detail: locale.codePoint,
                    info: character.codePoint,
                  ),
                  InformationTile(detail: locale.block, info: character.block),
                  InformationTile(detail: locale.plane, info: mainPlane ?? ''),
                  InformationTile(
                    detail: locale.category,
                    info: character.category,
                    lastItem: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              locale.fontRendering,
              style: GoogleFonts.notoSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppTheme.whiteShade),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InformationTile(
                    detail: 'Font',
                    info: character.character,
                    isFontText: true,
                    lastItem: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
