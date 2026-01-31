/// A utility class for working with Unicode text and script-specific font
/// styles.
///
/// The [UnicodeHelper] class provides static methods to help render
/// multilingual text with appropriate visual appearance by applying
/// script-specific font styles.
///
/// ## Usage Example
/// ```dart
/// // Get font styles for the Arabic script
/// List<TextStyle> styles = UnicodeHelper.getFontStylesForScript(
///   'Arabic',
///   fontSize: 18,
///   color: Colors.blue,
///   fontWeight: FontWeight.bold,
/// );
/// // Use the styles to display text in a Text widget
/// Text('مرحبا', style: styles.first);
/// ```
///
/// ## Key Methods
/// - getFontStylesForScript: Returns a list of [TextStyle] objects customized
/// for a given script.
///
/// This class is useful for rendering Unicode text in Flutter applications,
/// ensuring that each script is displayed with suitable fonts and typographic
/// properties.
library;


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gsoc_unicode_app/gen/fonts.gen.dart';

/// This class provides utility functions for working with Unicode text.
class UnicodeHelper {
  /// Returns a List [TextStyle] customized for displaying text in a specific
  /// script.
  ///
  /// This function allows you to apply script-specific styling to text, such as
  /// font family, size, weight, and other typographic properties. It is useful
  /// for rendering multilingual text with appropriate visual appearance.
  static List<TextStyle> getFontStylesForScript(
    String script, {
    double fontSize = 16,
    Color color = Colors.black,
    FontWeight? fontWeight,
  }) {
    final normalizedScript = script.replaceAll('_', ' ');
    switch (normalizedScript) {
      case 'Adlam':
        return [
          GoogleFonts.notoSansAdlam(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSansAdlamUnjoined(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Ahom':
        return [
          GoogleFonts.notoSerifAhom(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Anatolian Hieroglyphs':
        return [
          GoogleFonts.notoSansAnatolianHieroglyphs(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Avestan':
        return [
          GoogleFonts.notoSansAvestan(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Arabic':
        return [
          GoogleFonts.notoNaskhArabic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSansArabic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoKufiArabic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Armenian':
        return [
          GoogleFonts.notoSansArmenian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Balinese':
        return [
          GoogleFonts.notoSansBalinese(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifBalinese(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Bamum':
        return [
          GoogleFonts.notoSansBamum(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Bassa Vah':
        return [
          GoogleFonts.notoSansBassaVah(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Batak':
        return [
          GoogleFonts.notoSansBatak(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Bengali':
        return [
          GoogleFonts.notoSansBengali(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifBengali(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Bhaiksuki':
        return [
          GoogleFonts.notoSansBhaiksuki(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Brahmi':
        return [
          GoogleFonts.notoSansBrahmi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Braille':
        return [
          GoogleFonts.notoSansSymbols2(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Buginese':
        return [
          GoogleFonts.notoSansBuginese(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Buhid':
        return [
          GoogleFonts.notoSansBuhid(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Canadian Aboriginal':
        return [
          GoogleFonts.notoSansCanadianAboriginal(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Carian':
        return [
          GoogleFonts.notoSansCarian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Caucasian Albanian':
        return [
          GoogleFonts.notoSansCaucasianAlbanian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Chakma':
        return [
          GoogleFonts.notoSansChakma(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Cham':
        return [
          GoogleFonts.notoSansCham(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Cherokee':
        return [
          GoogleFonts.notoSansCherokee(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Chorasmian':
        return [
          GoogleFonts.notoSansChorasmian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Coptic':
        return [
          GoogleFonts.notoSansCoptic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Cuneiform':
        return [
          GoogleFonts.notoSansCuneiform(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Cypriot':
        return [
          GoogleFonts.notoSansCypriot(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Cypro Minoan':
        return [
          GoogleFonts.notoSansCyproMinoan(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Deseret':
        return [
          GoogleFonts.notoSansDeseret(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Devanagari':
        return [
          GoogleFonts.notoSansDevanagari(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifDevanagari(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Dogra':
        return [
          GoogleFonts.notoSerifDogra(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Duployan':
        return [
          GoogleFonts.notoSansDuployan(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Egyptian Hieroglyphs':
        return [
          GoogleFonts.notoSansEgyptianHieroglyphs(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Elbasan':
        return [
          GoogleFonts.notoSansElbasan(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Elymaic':
        return [
          GoogleFonts.notoSansElymaic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Ethiopic':
        return [
          GoogleFonts.notoSansEthiopic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifEthiopic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Georgian':
        return [
          GoogleFonts.notoSansGeorgian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifGeorgian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Glagolitic':
        return [
          GoogleFonts.notoSansGlagolitic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Gothic':
        return [
          GoogleFonts.notoSansGothic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Grantha':
        return [
          GoogleFonts.notoSansGrantha(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Gujarati':
        return [
          GoogleFonts.notoSansGujarati(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifGujarati(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Gunjala Gondi':
        return [
          GoogleFonts.notoSansGunjalaGondi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Gurmukhi':
        return [
          GoogleFonts.notoSansGurmukhi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifGurmukhi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Hanifi Rohingya':
        return [
          GoogleFonts.notoSansHanifiRohingya(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Hanunoo':
        return [
          GoogleFonts.notoSansHanunoo(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Hatran':
        return [
          GoogleFonts.notoSansHatran(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Hebrew':
        return [
          GoogleFonts.notoSansHebrew(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifHebrew(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Imperial Aramaic':
        return [
          GoogleFonts.notoSansImperialAramaic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Inscriptional Pahlavi':
        return [
          GoogleFonts.notoSansInscriptionalPahlavi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Inscriptional Parthian':
        return [
          GoogleFonts.notoSansInscriptionalParthian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Javanese':
        return [
          GoogleFonts.notoSansJavanese(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Kaithi':
        return [
          GoogleFonts.notoSansKaithi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Kannada':
        return [
          GoogleFonts.notoSansKannada(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifKannada(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Kawi':
        return [
          GoogleFonts.notoSansKawi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Kayah Li':
        return [
          GoogleFonts.notoSansKayahLi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Kharoshthi':
        return [
          GoogleFonts.notoSansKharoshthi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Khitan Small Script':
        return [
          GoogleFonts.notoSerifKhitanSmallScript(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Khmer':
        return [
          GoogleFonts.notoSansKhmer(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifKhmer(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Khojki':
        return [
          GoogleFonts.notoSansKhojki(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Khudawadi':
        return [
          GoogleFonts.notoSansKhudawadi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Lao':
        return [
          GoogleFonts.notoSansLao(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Lepcha':
        return [
          GoogleFonts.notoSansLepcha(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Limbu':
        return [
          GoogleFonts.notoSansLimbu(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Linear A':
        return [
          GoogleFonts.notoSansLinearA(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Linear B':
        return [
          GoogleFonts.notoSansLinearB(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Lisu':
        return [
          GoogleFonts.notoSansLisu(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Lycian':
        return [
          GoogleFonts.notoSansLycian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Lydian':
        return [
          GoogleFonts.notoSansLydian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Mahajani':
        return [
          GoogleFonts.notoSansMahajani(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Makasar':
        return [
          GoogleFonts.notoSerifMakasar(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Malayalam':
        return [
          GoogleFonts.notoSansMalayalam(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifMalayalam(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Mandaic':
        return [
          GoogleFonts.notoSansMandaic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Manichaean':
        return [
          GoogleFonts.notoSansManichaean(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Marchen':
        return [
          GoogleFonts.notoSansMarchen(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Masaram Gondi':
        return [
          GoogleFonts.notoSansMasaramGondi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Medefaidrin':
        return [
          GoogleFonts.notoSansMedefaidrin(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Meetei Mayek':
        return [
          GoogleFonts.notoSansMeeteiMayek(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Mende Kikakui':
        return [
          GoogleFonts.notoSansMendeKikakui(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Meroitic Cursive':
      case 'Meroitic Hieroglyphs':
        return [
          GoogleFonts.notoSansMeroitic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Miao':
        return [
          GoogleFonts.notoSansMiao(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Modi':
        return [
          GoogleFonts.notoSansModi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Mongolian':
        return [
          GoogleFonts.notoSansMongolian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Mro':
        return [
          GoogleFonts.notoSansMro(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Multani':
        return [
          GoogleFonts.notoSansMultani(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Myanmar':
        return [
          GoogleFonts.notoSansMyanmar(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifMyanmar(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Nabataean':
        return [
          GoogleFonts.notoSansNabataean(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Nag Mundari':
        return [
          GoogleFonts.notoSansNagMundari(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Nandinagari':
        return [
          GoogleFonts.notoSansNandinagari(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'New Tai Lue':
        return [
          GoogleFonts.notoSansNewTaiLue(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Newa':
        return [
          GoogleFonts.notoSansNewa(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Nko':
        return [
          GoogleFonts.notoSansNKo(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Nushu':
        return [
          GoogleFonts.notoSansNushu(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Nyiakeng Puachue Hmong':
        return [
          GoogleFonts.notoSerifNpHmong(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Ogham':
        return [
          GoogleFonts.notoSansOgham(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Ol Chiki':
        return [
          GoogleFonts.notoSansOlChiki(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Old Hungarian':
        return [
          GoogleFonts.notoSansOldHungarian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Old Italic':
        return [
          GoogleFonts.notoSansOldItalic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Old North Arabian':
        return [
          GoogleFonts.notoSansOldNorthArabian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Old Permic':
        return [
          GoogleFonts.notoSansOldPermic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Old Persian':
        return [
          GoogleFonts.notoSansOldPersian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Old Sogdian':
        return [
          GoogleFonts.notoSansOldSogdian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Old South Arabian':
        return [
          GoogleFonts.notoSansOldSouthArabian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Old Turkic':
        return [
          GoogleFonts.notoSansOldTurkic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Old Uyghur':
        return [
          GoogleFonts.notoSerifOldUyghur(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Oriya':
        return [
          GoogleFonts.notoSansOriya(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifOriya(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Osage':
        return [
          GoogleFonts.notoSansOsage(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Osmanya':
        return [
          GoogleFonts.notoSansOsmanya(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Pahawh Hmong':
        return [
          GoogleFonts.notoSansPahawhHmong(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Palmyrene':
        return [
          GoogleFonts.notoSansPalmyrene(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Pau Cin Hau':
        return [
          GoogleFonts.notoSansPauCinHau(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Phags Pa':
        return [
          GoogleFonts.notoSansPhagsPa(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Phoenician':
        return [
          GoogleFonts.notoSansPhoenician(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Psalter Pahlavi':
        return [
          GoogleFonts.notoSansPsalterPahlavi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Rejang':
        return [
          GoogleFonts.notoSansRejang(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Runic':
        return [
          GoogleFonts.notoSansRunic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Samaritan':
        return [
          GoogleFonts.notoSansSamaritan(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Saurashtra':
        return [
          GoogleFonts.notoSansSaurashtra(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Sharada':
        return [
          GoogleFonts.notoSansSharada(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Shavian':
        return [
          GoogleFonts.notoSansShavian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Siddham':
        return [
          GoogleFonts.notoSansSiddham(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'SignWriting':
        return [
          GoogleFonts.notoSansSignWriting(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Sinhala':
        return [
          GoogleFonts.notoSansSinhala(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifSinhala(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Sogdian':
        return [
          GoogleFonts.notoSansSogdian(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Sora Sompeng':
        return [
          GoogleFonts.notoSansSoraSompeng(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Soyombo':
        return [
          GoogleFonts.notoSansSoyombo(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Sundanese':
        return [
          GoogleFonts.notoSansSundanese(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Sunuwar':
        return [
          TextStyle(
              fontFamily: FontFamily.sunuwar,
              fontSize: fontSize,
              color: color,
              fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Syloti Nagri':
        return [
          GoogleFonts.notoSansSylotiNagri(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Syriac':
        return [
          GoogleFonts.notoSansSyriac(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSansSyriacEastern(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tagalog':
        return [
          GoogleFonts.notoSansTagalog(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tagbanwa':
        return [
          GoogleFonts.notoSansTagbanwa(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tai Le':
        return [
          GoogleFonts.notoSansTaiLe(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tai Tham':
        return [
          GoogleFonts.notoSansTaiTham(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tai Viet':
        return [
          GoogleFonts.notoSansTaiViet(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Takri':
        return [
          GoogleFonts.notoSansTakri(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tamil':
        return [
          GoogleFonts.notoSansTamil(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tangsa':
        return [
          GoogleFonts.notoSansTangsa(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tangut':
        return [
          GoogleFonts.notoSerifTangut(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Telugu':
        return [
          GoogleFonts.notoSansTelugu(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Thaana':
        return [
          GoogleFonts.notoSansThaana(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Thai':
        return [
          GoogleFonts.notoSansThai(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tibetan':
        return [
          GoogleFonts.notoSerifTibetan(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tifinagh':
        return [
          GoogleFonts.notoSansTifinagh(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Tirhuta':
        return [
          GoogleFonts.notoSansTirhuta(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Todhri':
        return [
          TextStyle(
              fontFamily: FontFamily.todhri,
              fontSize: fontSize,
              color: color,
              fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Toto':
        return [
          GoogleFonts.notoSerifToto(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Ugaritic':
        return [
          GoogleFonts.notoSansUgaritic(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Vai':
        return [
          GoogleFonts.notoSansVai(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Vithkuqi':
        return [
          GoogleFonts.notoSansVithkuqi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Wancho':
        return [
          GoogleFonts.notoSansWancho(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Warang Citi':
        return [
          GoogleFonts.notoSansWarangCiti(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Yezidi':
        return [
          GoogleFonts.notoSerifYezidi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Yi':
        return [
          GoogleFonts.notoSansYi(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      case 'Zanabazar Square':
        return [
          GoogleFonts.notoSansZanabazarSquare(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      // --- East Asian scripts ---
      case 'Hiragana':
      case 'Katakana':
        return [
          GoogleFonts.notoSansJp(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerifJp(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
      default:
        return [
          GoogleFonts.notoSans(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          GoogleFonts.notoSerif(
              fontSize: fontSize, color: color, fontWeight: fontWeight),
          TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
        ];
    }
  }
}
