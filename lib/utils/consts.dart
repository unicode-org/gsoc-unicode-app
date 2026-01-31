// Define control codepoints to exclude (based on your Rust list)
/// A set of Unicode control codepoints.
///
/// This set contains the numeric values of Unicode control characters,
/// which are special characters used to control the interpretation or
/// display of text data. Control codepoints are typically in the ranges
/// U+0000-U+001F (C0 controls) and U+007F-U+009F (C1 controls).
///
/// Example:
/// ```dart
/// if (controlCodepoints.contains(charCode)) {
///   // Handle control character
/// }
/// ```
const Set<int> controlCodepoints = {
  // C0 Controls (U+0000 to U+001F)
  0x0000,
  0x0001,
  0x0002,
  0x0003,
  0x0004,
  0x0005,
  0x0006,
  0x0007,
  0x0008,
  0x0009,
  0x000A,
  0x000B,
  0x000C,
  0x000D,
  0x000E,
  0x000F,
  0x0010,
  0x0011,
  0x0012,
  0x0013,
  0x0014,
  0x0015,
  0x0016,
  0x0017,
  0x0018,
  0x0019,
  0x001A,
  0x001B,
  0x001C,
  0x001D,
  0x001E,
  0x001F,

  // C1 Controls (U+007F to U+009F)
  0x007F,
  0x0080,
  0x0081,
  0x0082,
  0x0083,
  0x0084,
  0x0085,
  0x0086,
  0x0087,
  0x0088,
  0x0089,
  0x008A,
  0x008B,
  0x008C,
  0x008D,
  0x008E,
  0x008F,
  0x0090,
  0x0091,
  0x0092,
  0x0093,
  0x0094,
  0x0095,
  0x0096,
  0x0097,
  0x0098,
  0x0099,
  0x009A,
  0x009B,
  0x009C,
  0x009D,
  0x009E,
  0x009F,

  // No-break space (not a control character)
  0x00A0,
};

/// A set of Unicode codepoints that represent characters which should not be
/// displayed or processed.
///
/// This constant contains integer values corresponding to Unicode codepoints
/// that are considered having no character representation, such as
/// space characters or other invisible characters.
const Set<int> noCharacterCodepoints = {
  // SPACE character
  0x0020,
  // EM QUAD
  0x2001,
  // EM SPACE
  0x2003,
};


/// A set of Unicode code points reserved for private use.
/// 
/// These code points are designated by the Unicode Standard for private use
/// and are not assigned to any specific characters. Applications can use these
/// code points for implementation-specific purposes.
Set<int> privateUse = {
  /// Private Use Area (PUA) range
  // Private Use Area (PUA) range (U+E000 to U+10FFFF)
  for (int i = 0xE000; i <= 0x10FFFF; i++) i,
};
