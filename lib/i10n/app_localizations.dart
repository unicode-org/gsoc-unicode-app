import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'i10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @unicodeTools.
  ///
  /// In en, this message translates to:
  /// **'Unicode Tools'**
  String get unicodeTools;

  /// No description provided for @chooseTool.
  ///
  /// In en, this message translates to:
  /// **'Choose a Tool'**
  String get chooseTool;

  /// No description provided for @unicodeCharacterVisualizer.
  ///
  /// In en, this message translates to:
  /// **'Unicode Character Visualizer'**
  String get unicodeCharacterVisualizer;

  /// No description provided for @exploreAndVisualize.
  ///
  /// In en, this message translates to:
  /// **'Explore and visualize unicode characters'**
  String get exploreAndVisualize;

  /// No description provided for @multilingualText.
  ///
  /// In en, this message translates to:
  /// **'Multilingual Text Rendering Tester'**
  String get multilingualText;

  /// No description provided for @testText.
  ///
  /// In en, this message translates to:
  /// **'Test text rendering across multiple languages'**
  String get testText;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @visualizer.
  ///
  /// In en, this message translates to:
  /// **'Visualizer'**
  String get visualizer;

  /// No description provided for @tester.
  ///
  /// In en, this message translates to:
  /// **'Tester'**
  String get tester;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @unicode.
  ///
  /// In en, this message translates to:
  /// **'Unicode'**
  String get unicode;

  /// No description provided for @multilingualTester.
  ///
  /// In en, this message translates to:
  /// **'Multilingual Tester'**
  String get multilingualTester;

  /// No description provided for @unicodeExplorer.
  ///
  /// In en, this message translates to:
  /// **'Unicode Explorer'**
  String get unicodeExplorer;

  /// No description provided for @characterInfo.
  ///
  /// In en, this message translates to:
  /// **'Character Information'**
  String get characterInfo;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @block.
  ///
  /// In en, this message translates to:
  /// **'Block'**
  String get block;

  /// No description provided for @plane.
  ///
  /// In en, this message translates to:
  /// **'Plane'**
  String get plane;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @fontRendering.
  ///
  /// In en, this message translates to:
  /// **'Font Rendering'**
  String get fontRendering;

  /// No description provided for @saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// No description provided for @savedCharacters.
  ///
  /// In en, this message translates to:
  /// **'Saved Characters'**
  String get savedCharacters;

  /// No description provided for @codePoint.
  ///
  /// In en, this message translates to:
  /// **'Code Point'**
  String get codePoint;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @defaultFont.
  ///
  /// In en, this message translates to:
  /// **'Default Font'**
  String get defaultFont;

  /// No description provided for @defaultLanguage.
  ///
  /// In en, this message translates to:
  /// **'Default Language'**
  String get defaultLanguage;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @textToCompare.
  ///
  /// In en, this message translates to:
  /// **'Text to Compare'**
  String get textToCompare;

  /// No description provided for @enterTextOrCharacters.
  ///
  /// In en, this message translates to:
  /// **'Enter text or characters here'**
  String get enterTextOrCharacters;

  /// No description provided for @font.
  ///
  /// In en, this message translates to:
  /// **'Font'**
  String get font;

  /// No description provided for @renderingPreview.
  ///
  /// In en, this message translates to:
  /// **'Rendering Preview'**
  String get renderingPreview;

  /// No description provided for @recentlyViewed.
  ///
  /// In en, this message translates to:
  /// **'Recently Viewed'**
  String get recentlyViewed;

  /// No description provided for @allCharacters.
  ///
  /// In en, this message translates to:
  /// **'All Characters'**
  String get allCharacters;

  /// No description provided for @characters.
  ///
  /// In en, this message translates to:
  /// **'Characters'**
  String get characters;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
