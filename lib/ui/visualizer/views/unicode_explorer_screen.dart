/// Screen for exploring and searching Unicode characters.
///
/// Allows users to search, filter, and view recently viewed and all Unicode
/// characters.
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/shared/shared.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/utils.dart';

/// The main Unicode explorer screen widget.
@RoutePage()
class UnicodeExplorerScreen extends HookWidget {
  /// Creates a [UnicodeExplorerScreen].
  const UnicodeExplorerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocalizations;
    final filteredCharacters =
        context.watch<UnicodeCharactersCubit>().state.filteredCharacters;
    final characters = context.watch<UnicodeCharactersCubit>().state.characters;
    final recentlyViewedCharacters =
        context.watch<AllRecentCharactersCubit>().state.characters;
    final query = useState<String>('');

    return Scaffold(
      backgroundColor: AppTheme.screenShade,
      appBar: CustomAppBar(title: locale.unicodeExplorer),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: _SearchBarDelegate(
              onChanged: (value) {
                query.value = value;
                if (value.isNotEmpty) {
                  context.read<UnicodeCharactersCubit>().loadUnicodeCharacters(
                        filter: value,
                      );
                } else {
                  context
                      .read<UnicodeCharactersCubit>()
                      .loadUnicodeCharacters();
                }
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (query.value.isEmpty) ...[
                    Text(
                      locale.recentlyViewed,
                      style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 38),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 16,
                        children: recentlyViewedCharacters.map((char) {
                          return RecentTextBox(
                            onTap: () => context.router.pushWidget(
                              CharacterDetailScreen(character: char),
                            ),
                            character: char,
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      locale.allCharacters,
                      style: GoogleFonts.notoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 24),
                    CharacterView(characters: characters),
                    const SizedBox(height: 30),
                  ] else ...[
                    CharacterView(characters: filteredCharacters),
                    const SizedBox(height: 30),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// `_SearchBarDelegate` for Unicode Explorer

// This delegate is responsible for the persistent search bar at the top of the
// screen.
class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  _SearchBarDelegate({this.onChanged});

  final void Function(String)? onChanged;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(
      elevation: overlapsContent ? 4 : 0,
      color: AppTheme.screenShade, // Match screen background
      child: SizedBox(
        height: maxExtent,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 33, // Keep initial top padding
            bottom: 20,
          ),
          child: SearchField(onChanged: onChanged),
        ),
      ),
    );
  }

  // 33 (top padding) + 50 (approx SearchField height) + 20 (bottom padding)
  @override
  double get maxExtent => 33 + 50 + 20;

  //  match maxExtent for a fixed search bar
  @override
  double get minExtent => 33 + 50 + 20;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
