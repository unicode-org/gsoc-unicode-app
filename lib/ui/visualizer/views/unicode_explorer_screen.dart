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
    final unicodeCharPropertiesState =
        context.watch<UnicodeCharPropertiesBloc>().state;
    final characters = unicodeCharPropertiesState.characters;
    final recentlyViewedCharacters =
        context.watch<AllRecentCharactersCubit>().state.characters;
    final query = useState<String>('');
    final scrollController = useScrollController();

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (unicodeCharPropertiesState.showLoadMore &&
            notification.metrics.pixels ==
                notification.metrics.maxScrollExtent) {
          context.read<UnicodeCharPropertiesBloc>().add(
                UnicodeCharPropertiesEvent.getCharacters(
                  page: unicodeCharPropertiesState.pageNo + 1,
                ),
              );
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: AppTheme.screenShade,
        appBar: CustomAppBar(title: locale.unicodeExplorer),
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: _SearchBarDelegate(
                onChanged: (value) {
                  query.value = value;
                  if (value.isNotEmpty) {
                    context.read<UnicodeCharPropertiesBloc>().add(
                          UnicodeCharPropertiesEvent.getCharacters(
                            searchQuery: value,
                            page: 1,
                          ),
                        );
                  } else {
                    context.read<UnicodeCharPropertiesBloc>().add(
                          const UnicodeCharPropertiesEvent.getCharacters(
                            page: 1,
                          ),
                        );
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
                    CharacterView(
                      controller: scrollController,
                      characters: characters,
                    ),
                    const SizedBox(height: 30),
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

// `_SearchBarDelegate` for Unicode Explorer

// This delegate is responsible for the persistent search bar at the top of the
// screen.
class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  /// Creates a [_SearchBarDelegate] with the given [onChanged] callback.
  _SearchBarDelegate({this.onChanged});

  /// Callback function called when the search text changes.
  final void Function(String)? onChanged;

  /// Builds the persistent search bar widget.
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

  /// The maximum height of the search bar.
  @override
  double get maxExtent => 33 + 50 + 20;

  /// The minimum height of the search bar (matches maxExtent for fixed height).
  @override
  double get minExtent => 33 + 50 + 20;

  /// Whether the delegate should rebuild when the old delegate changes.
  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
