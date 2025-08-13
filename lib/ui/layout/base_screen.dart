/// The main base screen with bottom navigation for the Unicode Flutter App.
///
/// Hosts the primary navigation structure and switches between main app
/// screens.
library;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gsoc_unicode_app/app/app_theme.dart';
import 'package:gsoc_unicode_app/ui/ui.dart';
import 'package:gsoc_unicode_app/utils/localization_extensions.dart';

/// The entry point for the main navigation structure.
///
/// Accepts an optional [index] to set the initial tab.
@RoutePage()
class BaseScreen extends StatelessWidget {
  /// Creates a [BaseScreen] with an optional initial tab index.
  const BaseScreen({super.key, this.index});

  /// The initial tab index for the bottom navigation bar.
  final int? index;

  @override
  Widget build(BuildContext context) {
    return _BaseScreen(index: index);
  }
}

/// Internal stateful widget for managing navigation and tab switching.
class _BaseScreen extends StatefulHookWidget {
  /// Creates an internal [_BaseScreen] with the given [index].
  const _BaseScreen({required this.index});

  /// The initial tab index.
  final int? index;

  @override
  State<_BaseScreen> createState() => __BaseScreenState();
}

/// Internal state class for managing the base screen navigation and UI.
class __BaseScreenState extends State<_BaseScreen> {
  /// Builds the widget tree for the base screen with navigation.
  @override
  Widget build(BuildContext context) {
    final locale = context.appLocalizations;
    final currentIndex = useState(widget.index ?? 0);
    final screens = <Widget>[
      const HomeScreen(),
      const UnicodeExplorerScreen(),
      const MultilingualTesterScreen(),
      const SavedScreen(),
    ];

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
