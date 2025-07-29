part of 'unicode_characters_bloc.dart';

/// State for the [UnicodeCharPropertiesBloc].
///
/// This state is used to manage the state of the Unicode characters.
/// It is also used to store the error message.
/// It is also used to store the loading state.
/// It is also used to store the loaded state.
@freezed
class UnicodeCharPropertiesState with _$UnicodeCharPropertiesState {
  /// Initial state for Unicode characters.
  const factory UnicodeCharPropertiesState.initial({
    @Default(<UnicodeCharProperties>[]) List<UnicodeCharProperties> characters,
    @Default(1) int pageNo,
    @Default(false) bool showLoadMore,
  }) = _Initial;

  /// Loading state for Unicode characters.
  const factory UnicodeCharPropertiesState.loading({
    required List<UnicodeCharProperties> characters,
    required int pageNo,
    @Default(false) bool showLoadMore,
  }) = _Loading;

  /// Loaded state for Unicode characters.
  const factory UnicodeCharPropertiesState.loaded({
    required List<UnicodeCharProperties> characters,
    required int pageNo,
    @Default(false) bool showLoadMore,
  }) = _Loaded;

  /// Error state for Unicode characters.
  const factory UnicodeCharPropertiesState.error({
    required List<UnicodeCharProperties> characters,
    required int pageNo,
    @Default(false) bool showLoadMore,
    String? error,
  }) = _Error;
}
