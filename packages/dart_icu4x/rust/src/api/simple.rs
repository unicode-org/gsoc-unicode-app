/// Initialize the Rust side of the Flutter bridge and set up default utilities.
///
/// Called once by Flutter to perform library initialization.
#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}

use serde::Serialize;
use icu_collections::codepointinvlist::CodePointInversionList;
use icu_properties::CodePointMapDataBorrowed;
use icu_properties::CodePointSetDataBorrowed;
use icu_properties::props::*;
use unicode_names2::name;
use unicode_blocks::find_unicode_block;
use std::collections::BTreeSet;
use icu_casemap::CaseMapper;
use icu_locale_core::LanguageIdentifier;
use std::sync::OnceLock; 

static GENERAL_CATEGORY: OnceLock<CodePointMapDataBorrowed<'static, GeneralCategory>> = OnceLock::new();
static SCRIPT: OnceLock<CodePointMapDataBorrowed<'static, Script>> = OnceLock::new();
static BIDI_CLASS: OnceLock<CodePointMapDataBorrowed<'static, BidiClass>> = OnceLock::new();
static EAST_ASIAN_WIDTH: OnceLock<CodePointMapDataBorrowed<'static, EastAsianWidth>> = OnceLock::new();
static LINE_BREAK: OnceLock<CodePointMapDataBorrowed<'static, LineBreak>> = OnceLock::new();
static WORD_BREAK: OnceLock<CodePointMapDataBorrowed<'static, WordBreak>> = OnceLock::new();
static SENTENCE_BREAK: OnceLock<CodePointMapDataBorrowed<'static, SentenceBreak>> = OnceLock::new();
static GRAPHEME_BREAK: OnceLock<CodePointMapDataBorrowed<'static, GraphemeClusterBreak>> = OnceLock::new();
static HANGUL: OnceLock<CodePointMapDataBorrowed<'static, HangulSyllableType>> = OnceLock::new();
static JOINING: OnceLock<CodePointMapDataBorrowed<'static, JoiningType>> = OnceLock::new();
static ALPHABETIC: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static UPPERCASE: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static LOWERCASE: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static WHITE_SPACE: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static MATH: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static DASH: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static DIACRITIC: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static EMOJI: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static EMOJI_PRESENTATION: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static EMOJI_MODIFIER: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();
static EMOJI_MODIFIER_BASE: OnceLock<CodePointSetDataBorrowed<'static>> = OnceLock::new();

// Helper functions to get or initialize the static data
/// Get the lazily-initialized Unicode General Category map.
///
/// Returns a borrowed ICU4X code point map usable for lookups.
fn get_general_category() -> &'static CodePointMapDataBorrowed<'static, GeneralCategory> {
    GENERAL_CATEGORY.get_or_init(|| CodePointMapDataBorrowed::<GeneralCategory>::new())
}

/// Get the lazily-initialized Script map.
///
/// Returns a borrowed ICU4X code point map usable for script lookups and names.
fn get_script() -> &'static CodePointMapDataBorrowed<'static, Script> {
    SCRIPT.get_or_init(|| CodePointMapDataBorrowed::<Script>::new())
}

/// Get the lazily-initialized Bidirectional Class map.
fn get_bidi_class() -> &'static CodePointMapDataBorrowed<'static, BidiClass> {
    BIDI_CLASS.get_or_init(|| CodePointMapDataBorrowed::<BidiClass>::new())
}

/// Get the lazily-initialized East Asian Width map.
fn get_east_asian_width() -> &'static CodePointMapDataBorrowed<'static, EastAsianWidth> {
    EAST_ASIAN_WIDTH.get_or_init(|| CodePointMapDataBorrowed::<EastAsianWidth>::new())
}

/// Get the lazily-initialized Line Break map.
fn get_line_break() -> &'static CodePointMapDataBorrowed<'static, LineBreak> {
    LINE_BREAK.get_or_init(|| CodePointMapDataBorrowed::<LineBreak>::new())
}

/// Get the lazily-initialized Word Break map.
fn get_word_break() -> &'static CodePointMapDataBorrowed<'static, WordBreak> {
    WORD_BREAK.get_or_init(|| CodePointMapDataBorrowed::<WordBreak>::new())
}

/// Get the lazily-initialized Sentence Break map.
fn get_sentence_break() -> &'static CodePointMapDataBorrowed<'static, SentenceBreak> {
    SENTENCE_BREAK.get_or_init(|| CodePointMapDataBorrowed::<SentenceBreak>::new())
}

/// Get the lazily-initialized Grapheme Cluster Break map.
fn get_grapheme_break() -> &'static CodePointMapDataBorrowed<'static, GraphemeClusterBreak> {
    GRAPHEME_BREAK.get_or_init(|| CodePointMapDataBorrowed::<GraphemeClusterBreak>::new())
}

/// Get the lazily-initialized Hangul Syllable Type map.
fn get_hangul() -> &'static CodePointMapDataBorrowed<'static, HangulSyllableType> {
    HANGUL.get_or_init(|| CodePointMapDataBorrowed::<HangulSyllableType>::new())
}

/// Get the lazily-initialized Joining Type map.
fn get_joining() -> &'static CodePointMapDataBorrowed<'static, JoiningType> {
    JOINING.get_or_init(|| CodePointMapDataBorrowed::<JoiningType>::new())
}

/// Get the lazily-initialized Alphabetic code point set.
fn get_alphabetic() -> &'static CodePointSetDataBorrowed<'static> {
    ALPHABETIC.get_or_init(|| CodePointSetDataBorrowed::new::<Alphabetic>())
}

/// Get the lazily-initialized Uppercase code point set.
fn get_uppercase() -> &'static CodePointSetDataBorrowed<'static> {
    UPPERCASE.get_or_init(|| CodePointSetDataBorrowed::new::<Uppercase>())
}

/// Get the lazily-initialized Lowercase code point set.
fn get_lowercase() -> &'static CodePointSetDataBorrowed<'static> {
    LOWERCASE.get_or_init(|| CodePointSetDataBorrowed::new::<Lowercase>())
}

/// Get the lazily-initialized White Space code point set.
fn get_white_space() -> &'static CodePointSetDataBorrowed<'static> {
    WHITE_SPACE.get_or_init(|| CodePointSetDataBorrowed::new::<WhiteSpace>())
}

/// Get the lazily-initialized Math code point set.
fn get_math() -> &'static CodePointSetDataBorrowed<'static> {
    MATH.get_or_init(|| CodePointSetDataBorrowed::new::<Math>())
}

/// Get the lazily-initialized Dash code point set.
fn get_dash() -> &'static CodePointSetDataBorrowed<'static> {
    DASH.get_or_init(|| CodePointSetDataBorrowed::new::<Dash>())
}

/// Get the lazily-initialized Diacritic code point set.
fn get_diacritic() -> &'static CodePointSetDataBorrowed<'static> {
    DIACRITIC.get_or_init(|| CodePointSetDataBorrowed::new::<Diacritic>())
}

/// Get the lazily-initialized Emoji code point set.
fn get_emoji() -> &'static CodePointSetDataBorrowed<'static> {
    EMOJI.get_or_init(|| CodePointSetDataBorrowed::new::<Emoji>())
}

/// Get the lazily-initialized Emoji Presentation code point set.
fn get_emoji_presentation() -> &'static CodePointSetDataBorrowed<'static> {
    EMOJI_PRESENTATION.get_or_init(|| CodePointSetDataBorrowed::new::<EmojiPresentation>())
}

/// Get the lazily-initialized Emoji Modifier code point set.
fn get_emoji_modifier() -> &'static CodePointSetDataBorrowed<'static> {
    EMOJI_MODIFIER.get_or_init(|| CodePointSetDataBorrowed::new::<EmojiModifier>())
}

/// Get the lazily-initialized Emoji Modifier Base code point set.
fn get_emoji_modifier_base() -> &'static CodePointSetDataBorrowed<'static> {
    EMOJI_MODIFIER_BASE.get_or_init(|| CodePointSetDataBorrowed::new::<EmojiModifierBase>())
}

#[derive(Serialize)]
pub struct UnicodeCharProperties {
    pub character: String,
    pub code_point: u32,
    #[serde(default)]
    pub name: Option<String>,
    #[serde(default)]
    pub unicode_value: Option<String>,
    #[serde(default)]
    pub general_category: Option<String>,
    #[serde(default)]
    pub block: Option<String>,
    #[serde(default)]
    pub plane: Option<String>,
    #[serde(default)]
    pub script: Option<String>,
    #[serde(default)]
    pub bidi_class: Option<String>,
    #[serde(default)]
    pub east_asian_width: Option<String>,
    #[serde(default)]
    pub line_break: Option<String>,
    #[serde(default)]
    pub word_break: Option<String>,
    #[serde(default)]
    pub sentence_break: Option<String>,
    #[serde(default)]
    pub grapheme_cluster_break: Option<String>,
    #[serde(default)]
    pub hangul_syllable_type: Option<String>,
    #[serde(default)]
    pub joining_type: Option<String>,
    #[serde(default)]
    pub is_alphabetic: Option<bool>,
    #[serde(default)]
    pub is_uppercase: Option<bool>,
    #[serde(default)]
    pub is_lowercase: Option<bool>,
    #[serde(default)]
    pub is_white_space: Option<bool>,
    #[serde(default)]
    pub is_math: Option<bool>,
    #[serde(default)]
    pub is_dash: Option<bool>,
    #[serde(default)]
    pub is_diacritic: Option<bool>,
    #[serde(default)]
    pub is_emoji: Option<bool>,
    #[serde(default)]
    pub is_emoji_presentation: Option<bool>,
    #[serde(default)]
    pub is_emoji_modifier: Option<bool>,    
    #[serde(default)]
    pub is_emoji_modifier_base: Option<bool>,
}

#[derive(Serialize)]
pub struct ScriptCharactersResult {
    pub script_long_name: String,
    pub script_short_name: String,
    pub total_count: usize,
    pub characters: Vec<UnicodeCharProperties>,
}

macro_rules! to_string_opt {
    ($val:expr) => {
        Some(format!("{:?}", $val))
    };
}

fn safe_name(c: char) -> String {
    name(c).map(|n| n.to_string()).unwrap_or_else(|| "UNKNOWN".to_string())
}

/// Check if a character matches an optional search string.
///
/// The search is performed across several derived fields (char, code point,
/// Unicode value, general category, script names, and character name).
/// Returns true if `search` is None or if any field contains the query.
fn matches_search(c: char, search: &Option<String>) -> bool {
    if let Some(ref s) = search {
        let s = s.to_lowercase();
        let char_str = c.to_string().to_lowercase();
        let code_point_str = (c as u32).to_string();
        let unicode_value = format!("U+{:04X}", c as u32).to_lowercase();
        let general_category = format!("{:?}", get_general_category().get(c)).to_lowercase();
        let script_long = get_script().get(c).long_name().to_lowercase();
        let script_short = get_script().get(c).short_name().to_lowercase();
        let name_str = safe_name(c).to_lowercase();

        char_str.contains(&s)
            || code_point_str.contains(&s)
            || unicode_value.contains(&s)
            || general_category.contains(&s)
            || script_long.contains(&s)
            || script_short.contains(&s)
            || name_str.contains(&s)
    } else {
        true
    }
}

/// Convert a character into a serializable bundle of Unicode properties.
///
/// Uses ICU4X data to populate map/set-derived fields and auxiliary helpers
/// for block and plane names.
fn map_to_properties(c: char) -> UnicodeCharProperties {
    UnicodeCharProperties {
        character: c.to_string(),
        code_point: c as u32,
        name: Some(safe_name(c)),
        unicode_value: Some(format!("U+{:04X}", c as u32)),
        block: Some(find_unicode_block(c).map(|b| b.name()).unwrap_or("UNKNOWN").to_string()),
        plane: Some(get_plane_name(c as u32).to_string()),
        general_category: to_string_opt!(get_general_category().get(c)),
        script: Some(get_script().get(c).long_name().to_string()),
        bidi_class: to_string_opt!(get_bidi_class().get(c)),
        east_asian_width: to_string_opt!(get_east_asian_width().get(c)),
        line_break: to_string_opt!(get_line_break().get(c)),
        word_break: to_string_opt!(get_word_break().get(c)),
        sentence_break: to_string_opt!(get_sentence_break().get(c)),
        grapheme_cluster_break: to_string_opt!(get_grapheme_break().get(c)),
        hangul_syllable_type: to_string_opt!(get_hangul().get(c)),
        joining_type: to_string_opt!(get_joining().get(c)),
        is_alphabetic: Some(get_alphabetic().contains(c)),
        is_uppercase: Some(get_uppercase().contains(c)),
        is_lowercase: Some(get_lowercase().contains(c)),
        is_white_space: Some(get_white_space().contains(c)),
        is_math: Some(get_math().contains(c)),
        is_dash: Some(get_dash().contains(c)),
        is_diacritic: Some(get_diacritic().contains(c)),
        is_emoji: Some(get_emoji().contains(c)),
        is_emoji_presentation: Some(get_emoji_presentation().contains(c)),
        is_emoji_modifier: Some(get_emoji_modifier().contains(c)),
        is_emoji_modifier_base: Some(get_emoji_modifier_base().contains(c)),
    }
}

#[flutter_rust_bridge::frb(sync)]
/// Return a page of Unicode character properties filtered by an optional query.
///
/// - `search`: optional lowercased substring to match against multiple fields.
/// - `offset`: number of matching characters to skip (start index, inclusive).
/// - `limit`: exclusive end index; the function returns at most `limit - offset` items.
pub fn get_unicode_char_properties(
    search: Option<String>,
    offset: usize,
    limit: usize,
) -> Vec<UnicodeCharProperties> {
    let page_len = limit.saturating_sub(offset);
    CodePointInversionList::all()
        .iter_chars()
        .filter(|&c| matches_search(c, &search))
        .skip(offset)
        .take(page_len)
        .map(map_to_properties)
        .collect()
}

/// Return the list of all script names (long names) present across Unicode scalar values.
#[flutter_rust_bridge::frb(sync)]
/// Return the sorted list of all script long names present in Unicode.
pub fn get_all_scripts() -> Vec<String> {
    let script_map: CodePointMapDataBorrowed<'static, Script> = CodePointMapDataBorrowed::<Script>::new();
    let mut names: BTreeSet<String> = BTreeSet::new();

    for c in CodePointInversionList::all().iter_chars() {
        let s = script_map.get(c);
        names.insert(s.long_name().to_string());
    }

    names.into_iter().collect()
}

#[flutter_rust_bridge::frb(sync)]
/// Return the script long name for a single character.
///
/// Panics only if ICU4X script data is unavailable (should not happen).
pub fn get_script_for_char(ch: char) -> String {
    let script_map: CodePointMapDataBorrowed<'static, Script> = CodePointMapDataBorrowed::<Script>::new();
    script_map.get(ch).long_name().to_string()
}

/// Get the name of the plane for a given code point.
///
/// This function returns a string that describes the plane of the given code point.
/// The plane is determined by the first 16 bits of the code point.
///
/// # Arguments
///
/// * `code_point` - The code point to get the plane name for.
///
/// # Returns
///
/// A string that describes the plane of the given code point.
fn get_plane_name(code_point: u32) -> &'static str {
    match code_point {
        0x0000..=0xFFFF => "Basic Multilingual Plane [1]",
        0x10000..=0x1FFFF => "Supplementary Multilingual Plane [2]",
        0x20000..=0x2FFFF => "Supplementary Ideographic Plane [3]",
        0x30000..=0x3FFFF => "Tertiary Ideographic Plane [4]",
        0x40000..=0x4FFFF => "Unassigned [5]",
        0x50000..=0x5FFFF => "Unassigned [6]",
        0x60000..=0x6FFFF => "Unassigned [7]",
        0x70000..=0x7FFFF => "Unassigned [8]",
        0x80000..=0x8FFFF => "Unassigned [9]",
        0x90000..=0x9FFFF => "Unassigned [10]",
        0xA0000..=0xAFFFF => "Unassigned [11]",
        0xB0000..=0xBFFFF => "Supplementary Special-purpose Plane [14]",
        0xC0000..=0xCFFFF => "Unassigned [13]",
        0xD0000..=0xDFFFF => "Unassigned [14]",
        0xE0000..=0xEFFFF => "Supplementary Private Use Area-A [15]",
        0xF0000..=0xFFFFF => "Supplementary Private Use Area-B [16]",
        0x100000..=0x10FFFF => "Supplementary Private Use Area-B [17]",
        _ => "Unassigned",
    }
}

#[derive(Serialize)]
pub struct CaseMappingResult {
    pub original: String,
    pub mapped: String,
    pub has_mapping: bool,
}

#[flutter_rust_bridge::frb(sync)]
/// Return case mapping information (upper/lower) for a single-character string.
///
/// If the input is not exactly one Unicode scalar value, returns `has_mapping = false`
/// with the original text unchanged.
pub fn get_character_case_mapping(character: String) -> CaseMappingResult {
    let casemapper = CaseMapper::new();
    let langid: LanguageIdentifier = "und".parse().expect("Failed to parse 'und' as a language identifier");
    
    let mut chars = character.chars();
    let c = match chars.next() {
        Some(ch) if chars.next().is_none() => ch,
        _ => return CaseMappingResult {
            original: character.clone(),
            mapped: character,
            has_mapping: false,
        },
    };
    
    let original = c.to_string();
    let upper = casemapper.uppercase_to_string(&original, &langid).into_owned();
    let lower = casemapper.lowercase_to_string(&original, &langid).into_owned();
    
    // Check if the character has a case mapping (upper or lower is different from original)
    let has_mapping = upper != original || lower != original;
    
    // Return the appropriate mapping (prefer uppercase if different, otherwise lowercase)
    let mapped = if upper != original {
        upper
    } else if lower != original {
        lower
    } else {
        original.clone()
    };
    
    CaseMappingResult {
        original,
        mapped,
        has_mapping,
    }
}
