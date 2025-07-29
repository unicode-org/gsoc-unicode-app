// part of 'unicode_characters_cubit.dart';

// /// State for the [UnicodeCharPropertiessCubit].
// ///
// /// This state is used to manage the state of the Unicode characters.
// /// It is used to store the characters and the filtered characters.
// /// It is also used to store the error message.
// /// It is also used to store the loading state.
// /// It is also used to store the loaded state.
// @freezed
// class UnicodeCharPropertiesState with _$UnicodeCharPropertiesState {
//   /// Initial state for Unicode characters.
//   const factory UnicodeCharPropertiesState.initial({
//     @Default(<UnicodeCharProperties>[]) List<UnicodeCharProperties> characters,
//     @Default(<UnicodeCharProperties>[])
//     List<UnicodeCharProperties> filteredCharacters,
//   }) = _Initial;

//   /// Loading state for Unicode characters.
//   const factory UnicodeCharPropertiesState.loading({
//     @Default(<UnicodeCharProperties>[]) List<UnicodeCharProperties> characters,
//     @Default(<UnicodeCharProperties>[])
//     List<UnicodeCharProperties> filteredCharacters,
//   }) = _Loading;

//   /// Loaded state for Unicode characters.
//   const factory UnicodeCharPropertiesState.loaded({
//     required List<UnicodeCharProperties> characters,
//     required List<UnicodeCharProperties> filteredCharacters,
//   }) = _Loaded;

//   /// Error state for Unicode characters.
//   const factory UnicodeCharPropertiesState.error({
//     String? error,
//     @Default(<UnicodeCharProperties>[]) List<UnicodeCharProperties> characters,
//     @Default(<UnicodeCharProperties>[])
//     List<UnicodeCharProperties> filteredCharacters,
//   }) = _Error;
// }
