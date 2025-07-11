/// Defines storage keys and box names for Hive storage.
///
/// Used throughout the app to reference specific storage locations and keys.
library;

/// The name of the main Hive box for storing Unicode data.
const boxName = 'unicodeBox';

/// The key for saving the list of Unicode characters.
const savedCharactersKey = 'saveUnicodeCharacters';

/// The key for saving the list of recently viewed characters.
const recentCharacterKey = 'recentlyViewedCharacter';
