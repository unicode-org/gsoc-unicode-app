/// The main base screen with bottom navigation for the Unicode Flutter App.
///
/// Hosts the primary navigation structure and switches between main app
/// screens.
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/features/features.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/localization_extensions.dart';

/// The entry point for the main navigation structure.
///
/// Accepts an optional [index] to set the initial tab.
@RoutePage()

/// Creates a [BaseScreen] with an optional initial tab index.

/// The initial tab index for the bottom navigation bar.

/// Internal Hook widget for managing navigation and tab switching.
class BaseScreen extends HookWidget {
  /// Creates a [BaseScreen] with the given [index].
  const BaseScreen({super.key, @PathParam('index') this.index});

  /// The initial tab index.
  final int? index;

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocalizations;
    final currentIndex = useState(index ?? 0);
    final screens = <Widget>[
      const HomeScreen(),
      const UnicodeExplorerScreen(),
      const MultilingualTesterScreen(),
      const SavedScreen(),
    ];

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Initialize the current tab index
        context
            .read<HomeScrollCubit>()
            .updateCurrentTabIndex(currentIndex.value);
      });
      return null;
    }, [currentIndex.value]);

    return SafeAreaWrapper(
      child: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, index, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: KeyedSubtree(
                key: ValueKey<int>(index),
                child: screens[index],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppTheme.screenShade,
              currentIndex: index,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              onTap: (value) {
                currentIndex.value = value;
                context
                  .read<HomeScrollCubit>()
                  .updateCurrentTabIndex(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: locale.home,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.search),
                  label: locale.visualizer,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.translate),
                  label: locale.tester,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.bookmark_sharp),
                  label: locale.saved,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
