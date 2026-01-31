/// A [Cubit] that manages the state of the home scroll functionality.
///

library;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_scroll_state.dart';
part 'home_scroll_cubit.freezed.dart';

/// A Cubit that manages the state of home scroll functionality.
///
/// This cubit is responsible for handling the business logic
/// and state management
/// related to scrolling behavior on the home screen
/// It extends [Cubit] and uses [HomeScrollState] to represent
/// the various states of the home scroll feature.
///
/// Example usage:
/// ```dart
/// final homeScrollCubit = HomeScrollCubit();
/// ```
class HomeScrollCubit extends Cubit<HomeScrollState> {
  /// Creates an instance of [HomeScrollCubit] with an initial state.
  HomeScrollCubit() : super(const HomeScrollState.initial());

  /// Sets the scroll controller for the home screen.
  ///
  /// This method updates the state to `loaded` with the provided
  /// [scrollController] and initializes the current tab index to 0.
  ///
  /// [scrollController] - The [ScrollController] to be used for scrolling
  /// the home screen.
  void setScrollController(ScrollController scrollController) {
    emit(
      HomeScrollState.loaded(
        scrollController: scrollController,
        currentTabIndex: 0,
      ),
    );
  }

  /// Updates the current tab index.
  ///
  /// This method updates the state to reflect the new tab index
  /// if the current state is `loaded`. It uses the provided [index]
  /// to set the new current tab index.
  ///
  /// [index] - The new index of the currently selected tab.
  void updateCurrentTabIndex(int index) {
    state.maybeWhen(
      loaded: (scrollController, currentTabIndex) {
        emit(
          HomeScrollState.loaded(
            scrollController: scrollController,
            currentTabIndex: index,
          ),
        );
      },
      orElse: () {},
    );
  }

  /// Scrolls to the top of the home tab if currently on it.
  ///
  /// This method checks if the user is currently on the home tab (index 0)
  /// and if the scroll position is greater than 0. If both conditions are
  /// met, it animates the scroll to the top of the screen.
  ///
  /// [tappedIndex] - The index of the tab that was tapped.
  void scrollToTopIfOnHomeTab(int tappedIndex) {
    state.maybeWhen(
      loaded: (scrollController, currentTabIndex) {
        // Only scroll if we're tapping home tab (0) and we're already
        // on home tab
        if (tappedIndex == 0 &&
            currentTabIndex == 0 &&
            scrollController.hasClients &&
            scrollController.offset > 0) {
          scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      },
      orElse: () {},
    );
  }

  /// Clears the scroll controller and resets the state.
  ///
  /// This method emits the initial state, effectively clearing the
  /// scroll controller and resetting any associated state.
  void clearScrollController() {
    emit(const HomeScrollState.initial());
  }
}
