part of 'home_scroll_cubit.dart';

/// Represents the state of the home scroll functionality.
///
/// This abstract class defines the possible states for managing scrolling
/// and tab navigation in the home screen. It uses the `freezed` package
/// to generate immutable state classes.
///
/// The states include:
/// - [HomeScrollState.initial]: The initial state before any scroll controller
///   is set.
/// - [HomeScrollState.loaded]: The loaded state containing the
///   scroll controller and the current tab index.
@freezed
class HomeScrollState with _$HomeScrollState {
  /// The initial state of the home scroll functionality.
  ///
  /// This state is emitted when the cubit is first created and no scroll
  /// controller has been set yet. It represents the default or reset state.
  const factory HomeScrollState.initial() = _Initial;

  /// The loaded state containing the scroll controller and tab index.
  ///
  /// This state is emitted after the scroll controller is set via
  /// [HomeScrollCubit.setScrollController]. It holds the [ScrollController]
  /// for managing scroll behavior and the [currentTabIndex] for tracking
  /// the active tab.
  ///
  /// - [scrollController]: The controller used to manage scrolling in the
  ///   home screen. It must be provided and is required for scroll operations.
  /// - [currentTabIndex]: The index of the currently selected tab (e.g., 0
  ///   for home tab). This is used to determine scroll behavior, such as
  ///   scrolling to the top when the home tab is tapped.
  const factory HomeScrollState.loaded({
    required ScrollController scrollController,
    required int currentTabIndex,
  }) = _Loaded;
}
