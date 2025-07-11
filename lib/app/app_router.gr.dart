// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [BaseScreen]
class BaseRoute extends PageRouteInfo<BaseRouteArgs> {
  BaseRoute({Key? key, int? index, List<PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          args: BaseRouteArgs(key: key, index: index),
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BaseRouteArgs>(
        orElse: () => const BaseRouteArgs(),
      );
      return BaseScreen(key: args.key, index: args.index);
    },
  );
}

class BaseRouteArgs {
  const BaseRouteArgs({this.key, this.index});

  final Key? key;

  final int? index;

  @override
  String toString() {
    return 'BaseRouteArgs{key: $key, index: $index}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BaseRouteArgs) return false;
    return key == other.key && index == other.index;
  }

  @override
  int get hashCode => key.hashCode ^ index.hashCode;
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [MultilingualTesterScreen]
class MultilingualTesterRoute extends PageRouteInfo<void> {
  const MultilingualTesterRoute({List<PageRouteInfo>? children})
      : super(MultilingualTesterRoute.name, initialChildren: children);

  static const String name = 'MultilingualTesterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MultilingualTesterScreen();
    },
  );
}

/// generated route for
/// [SavedScreen]
class SavedRoute extends PageRouteInfo<void> {
  const SavedRoute({List<PageRouteInfo>? children})
      : super(SavedRoute.name, initialChildren: children);

  static const String name = 'SavedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SavedScreen();
    },
  );
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [UnicodeExplorerScreen]
class UnicodeExplorerRoute extends PageRouteInfo<void> {
  const UnicodeExplorerRoute({List<PageRouteInfo>? children})
      : super(UnicodeExplorerRoute.name, initialChildren: children);

  static const String name = 'UnicodeExplorerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UnicodeExplorerScreen();
    },
  );
}
