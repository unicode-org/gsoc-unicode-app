/// Screen displaying the list of saved Unicode characters.
///
/// Allows users to view and select saved characters for more details.
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// The screen that shows all saved Unicode characters.
@RoutePage()
class SavedScreen extends StatelessWidget {
  /// Creates a [SavedScreen].
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocalizations;
    final savedCharacters =
        context.watch<SavedCharactersCubit>().state.characters;
    return Scaffold(
      backgroundColor: AppTheme.screenShade,
      appBar: CustomAppBar(title: locale.saved),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (savedCharacters.isNotEmpty) ...[
              const SizedBox(height: 40),
              Text(
                locale.characters,
                style: GoogleFonts.notoSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (savedCharacters.isNotEmpty) ...[
                      const SizedBox(height: 24),
                      ...savedCharacters.map((char) {
                        return CharacterTile(
                          character: char.character,
                          characterName: char.characterName,
                          codePoint: char.codePoint,
                          onTap: () => context.router.pushWidget(
                            CharacterDetailScreen(character: char),
                          ),
                        );
                      }),
                    ] else
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: Center(
                          child: Text(
                            'No saved characters',
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            style: GoogleFonts.notoSans(
                              textStyle: context.textTheme.displayLarge,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
