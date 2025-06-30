/// Provides a global service locator using GetIt for dependency injection.
///
/// Use [locator] to register and retrieve app-wide services and singletons.
library;

import 'package:get_it/get_it.dart';

/// Global [GetIt.instance] for dependency injection.
final locator = GetIt.instance;

/// Set up [GetIt] locator for registering services and singletons.
Future<void> setUpLocator() async {}
