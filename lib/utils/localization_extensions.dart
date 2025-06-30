/// Extensions on [BuildContext] for safe localization access.
///
/// Ensures that localization is always available, even if not provided by the widget tree.
library;

import 'package:flutter/material.dart';
import 'package:gsoc_unicode_app/i10n/app_localizations.dart';
import 'package:gsoc_unicode_app/i10n/app_localizations_en.dart';

/// Extension for safely accessing [AppLocalizations] from [BuildContext].
extension SafeLocalizations on BuildContext {
  /// Returns the current [AppLocalizations] or a fallback if unavailable.
  AppLocalizations get appLocalizations =>
      AppLocalizations.of(this) ?? AppLocalizationsEn();
}
