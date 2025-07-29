import 'package:dart_icu4x/dart_icu4x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unicode_characters_event.dart';
part 'unicode_characters_state.dart';
part 'unicode_characters_bloc.freezed.dart';

/// Bloc for managing Unicode characters.
///
/// This bloc is responsible for fetching and managing Unicode characters.
/// It uses the [getUnicodeCharProperties] function to fetch characters.
/// It emits different states based on the current state of the bloc.
/// It also emits an error state if there is an error fetching the characters.
class UnicodeCharPropertiesBloc
    extends Bloc<UnicodeCharPropertiesEvent, UnicodeCharPropertiesState> {
  /// Constructor for the [UnicodeCharPropertiesBloc].
  ///
  /// Initializes the bloc with the initial state.
  /// It also adds the [on<_GetCharacters>] event handler.
  UnicodeCharPropertiesBloc() : super(const _Initial()) {
    on<_GetCharacters>(_onGetCharacters);
  }

  /// Event handler for the [_GetCharacters] event.
  ///
  /// Fetches the characters and emits the appropriate state based on the
  /// current state of the bloc.
  /// It also emits an error state if there is an error fetching the characters.
  Future<void> _onGetCharacters(
    _GetCharacters event,
    Emitter<UnicodeCharPropertiesState> emit,
  ) async {
    try {
      emit(
        _Loading(
          characters: state.characters,
          pageNo: state.pageNo,
          showLoadMore: true,
        ),
      );
      final charProperties = getUnicodeCharProperties(
        search: event.searchQuery,
        offset: BigInt.from(50 * (event.page - 1)),
        limit: BigInt.from(50 * event.page),
      );
      emit(
        _Loaded(
          characters: event.page == 1
              ? charProperties
              : [
                  ...state.characters,
                  ...charProperties,
                ],
          pageNo: event.page,
          showLoadMore: true,
        ),
      );
    } on Exception catch (e) {
      emit(
        _Error(
          characters: state.characters,
          pageNo: state.pageNo,
          showLoadMore: state.showLoadMore,
          error: e.toString(),
        ),
      );
    }
  }
}
