// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unicode_characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnicodeCharPropertiesEvent {
  int get page;
  String? get searchQuery;

  /// Create a copy of UnicodeCharPropertiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnicodeCharPropertiesEventCopyWith<UnicodeCharPropertiesEvent>
      get copyWith =>
          _$UnicodeCharPropertiesEventCopyWithImpl<UnicodeCharPropertiesEvent>(
              this as UnicodeCharPropertiesEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnicodeCharPropertiesEvent &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, searchQuery);

  @override
  String toString() {
    return 'UnicodeCharPropertiesEvent(page: $page, searchQuery: $searchQuery)';
  }
}

/// @nodoc
abstract mixin class $UnicodeCharPropertiesEventCopyWith<$Res> {
  factory $UnicodeCharPropertiesEventCopyWith(UnicodeCharPropertiesEvent value,
          $Res Function(UnicodeCharPropertiesEvent) _then) =
      _$UnicodeCharPropertiesEventCopyWithImpl;
  @useResult
  $Res call({int page, String? searchQuery});
}

/// @nodoc
class _$UnicodeCharPropertiesEventCopyWithImpl<$Res>
    implements $UnicodeCharPropertiesEventCopyWith<$Res> {
  _$UnicodeCharPropertiesEventCopyWithImpl(this._self, this._then);

  final UnicodeCharPropertiesEvent _self;
  final $Res Function(UnicodeCharPropertiesEvent) _then;

  /// Create a copy of UnicodeCharPropertiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchQuery = freezed,
  }) {
    return _then(_self.copyWith(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UnicodeCharPropertiesEvent].
extension UnicodeCharPropertiesEventPatterns on UnicodeCharPropertiesEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCharacters() when getCharacters != null:
        return getCharacters(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
  }) {
    final _that = this;
    switch (_that) {
      case _GetCharacters():
        return getCharacters(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
  }) {
    final _that = this;
    switch (_that) {
      case _GetCharacters() when getCharacters != null:
        return getCharacters(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String? searchQuery)? getCharacters,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetCharacters() when getCharacters != null:
        return getCharacters(_that.page, _that.searchQuery);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String? searchQuery) getCharacters,
  }) {
    final _that = this;
    switch (_that) {
      case _GetCharacters():
        return getCharacters(_that.page, _that.searchQuery);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String? searchQuery)? getCharacters,
  }) {
    final _that = this;
    switch (_that) {
      case _GetCharacters() when getCharacters != null:
        return getCharacters(_that.page, _that.searchQuery);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetCharacters implements UnicodeCharPropertiesEvent {
  const _GetCharacters({required this.page, this.searchQuery});

  @override
  final int page;
  @override
  final String? searchQuery;

  /// Create a copy of UnicodeCharPropertiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetCharactersCopyWith<_GetCharacters> get copyWith =>
      __$GetCharactersCopyWithImpl<_GetCharacters>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCharacters &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, searchQuery);

  @override
  String toString() {
    return 'UnicodeCharPropertiesEvent.getCharacters(page: $page, searchQuery: $searchQuery)';
  }
}

/// @nodoc
abstract mixin class _$GetCharactersCopyWith<$Res>
    implements $UnicodeCharPropertiesEventCopyWith<$Res> {
  factory _$GetCharactersCopyWith(
          _GetCharacters value, $Res Function(_GetCharacters) _then) =
      __$GetCharactersCopyWithImpl;
  @override
  @useResult
  $Res call({int page, String? searchQuery});
}

/// @nodoc
class __$GetCharactersCopyWithImpl<$Res>
    implements _$GetCharactersCopyWith<$Res> {
  __$GetCharactersCopyWithImpl(this._self, this._then);

  final _GetCharacters _self;
  final $Res Function(_GetCharacters) _then;

  /// Create a copy of UnicodeCharPropertiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? searchQuery = freezed,
  }) {
    return _then(_GetCharacters(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$UnicodeCharPropertiesState {
  List<UnicodeCharProperties> get characters;
  int get pageNo;
  bool get showLoadMore;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnicodeCharPropertiesStateCopyWith<UnicodeCharPropertiesState>
      get copyWith =>
          _$UnicodeCharPropertiesStateCopyWithImpl<UnicodeCharPropertiesState>(
              this as UnicodeCharPropertiesState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnicodeCharPropertiesState &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.showLoadMore, showLoadMore) ||
                other.showLoadMore == showLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(characters), pageNo, showLoadMore);

  @override
  String toString() {
    return 'UnicodeCharPropertiesState(characters: $characters, pageNo: $pageNo, showLoadMore: $showLoadMore)';
  }
}

/// @nodoc
abstract mixin class $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory $UnicodeCharPropertiesStateCopyWith(UnicodeCharPropertiesState value,
          $Res Function(UnicodeCharPropertiesState) _then) =
      _$UnicodeCharPropertiesStateCopyWithImpl;
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters, int pageNo, bool showLoadMore});
}

/// @nodoc
class _$UnicodeCharPropertiesStateCopyWithImpl<$Res>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  _$UnicodeCharPropertiesStateCopyWithImpl(this._self, this._then);

  final UnicodeCharPropertiesState _self;
  final $Res Function(UnicodeCharPropertiesState) _then;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
  }) {
    return _then(_self.copyWith(
      characters: null == characters
          ? _self.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _self.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _self.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [UnicodeCharPropertiesState].
extension UnicodeCharPropertiesStatePatterns on UnicodeCharPropertiesState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Loaded() when loaded != null:
        return loaded(_that);
      case _Error() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _Loaded():
        return loaded(_that);
      case _Error():
        return error(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Loaded() when loaded != null:
        return loaded(_that);
      case _Error() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnicodeCharProperties> characters, int pageNo,
            bool showLoadMore)?
        initial,
    TResult Function(List<UnicodeCharProperties> characters, int pageNo,
            bool showLoadMore)?
        loading,
    TResult Function(List<UnicodeCharProperties> characters, int pageNo,
            bool showLoadMore)?
        loaded,
    TResult Function(List<UnicodeCharProperties> characters, int pageNo,
            bool showLoadMore, String? error)?
        error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that.characters, _that.pageNo, _that.showLoadMore);
      case _Loading() when loading != null:
        return loading(_that.characters, _that.pageNo, _that.showLoadMore);
      case _Loaded() when loaded != null:
        return loaded(_that.characters, _that.pageNo, _that.showLoadMore);
      case _Error() when error != null:
        return error(
            _that.characters, _that.pageNo, _that.showLoadMore, _that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnicodeCharProperties> characters,
            int pageNo, bool showLoadMore)
        initial,
    required TResult Function(List<UnicodeCharProperties> characters,
            int pageNo, bool showLoadMore)
        loading,
    required TResult Function(List<UnicodeCharProperties> characters,
            int pageNo, bool showLoadMore)
        loaded,
    required TResult Function(List<UnicodeCharProperties> characters,
            int pageNo, bool showLoadMore, String? error)
        error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that.characters, _that.pageNo, _that.showLoadMore);
      case _Loading():
        return loading(_that.characters, _that.pageNo, _that.showLoadMore);
      case _Loaded():
        return loaded(_that.characters, _that.pageNo, _that.showLoadMore);
      case _Error():
        return error(
            _that.characters, _that.pageNo, _that.showLoadMore, _that.error);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnicodeCharProperties> characters, int pageNo,
            bool showLoadMore)?
        initial,
    TResult? Function(List<UnicodeCharProperties> characters, int pageNo,
            bool showLoadMore)?
        loading,
    TResult? Function(List<UnicodeCharProperties> characters, int pageNo,
            bool showLoadMore)?
        loaded,
    TResult? Function(List<UnicodeCharProperties> characters, int pageNo,
            bool showLoadMore, String? error)?
        error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that.characters, _that.pageNo, _that.showLoadMore);
      case _Loading() when loading != null:
        return loading(_that.characters, _that.pageNo, _that.showLoadMore);
      case _Loaded() when loaded != null:
        return loaded(_that.characters, _that.pageNo, _that.showLoadMore);
      case _Error() when error != null:
        return error(
            _that.characters, _that.pageNo, _that.showLoadMore, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements UnicodeCharPropertiesState {
  const _Initial(
      {final List<UnicodeCharProperties> characters =
          const <UnicodeCharProperties>[],
      this.pageNo = 1,
      this.showLoadMore = false})
      : _characters = characters;

  final List<UnicodeCharProperties> _characters;
  @override
  @JsonKey()
  List<UnicodeCharProperties> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final int pageNo;
  @override
  @JsonKey()
  final bool showLoadMore;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.showLoadMore, showLoadMore) ||
                other.showLoadMore == showLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), pageNo, showLoadMore);

  @override
  String toString() {
    return 'UnicodeCharPropertiesState.initial(characters: $characters, pageNo: $pageNo, showLoadMore: $showLoadMore)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters, int pageNo, bool showLoadMore});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
  }) {
    return _then(_Initial(
      characters: null == characters
          ? _self._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _self.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _self.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _Loading implements UnicodeCharPropertiesState {
  const _Loading(
      {required final List<UnicodeCharProperties> characters,
      required this.pageNo,
      this.showLoadMore = false})
      : _characters = characters;

  final List<UnicodeCharProperties> _characters;
  @override
  List<UnicodeCharProperties> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final int pageNo;
  @override
  @JsonKey()
  final bool showLoadMore;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.showLoadMore, showLoadMore) ||
                other.showLoadMore == showLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), pageNo, showLoadMore);

  @override
  String toString() {
    return 'UnicodeCharPropertiesState.loading(characters: $characters, pageNo: $pageNo, showLoadMore: $showLoadMore)';
  }
}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) _then) =
      __$LoadingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters, int pageNo, bool showLoadMore});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(this._self, this._then);

  final _Loading _self;
  final $Res Function(_Loading) _then;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
  }) {
    return _then(_Loading(
      characters: null == characters
          ? _self._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _self.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _self.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _Loaded implements UnicodeCharPropertiesState {
  const _Loaded(
      {required final List<UnicodeCharProperties> characters,
      required this.pageNo,
      this.showLoadMore = false})
      : _characters = characters;

  final List<UnicodeCharProperties> _characters;
  @override
  List<UnicodeCharProperties> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final int pageNo;
  @override
  @JsonKey()
  final bool showLoadMore;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.showLoadMore, showLoadMore) ||
                other.showLoadMore == showLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), pageNo, showLoadMore);

  @override
  String toString() {
    return 'UnicodeCharPropertiesState.loaded(characters: $characters, pageNo: $pageNo, showLoadMore: $showLoadMore)';
  }
}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) =
      __$LoadedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters, int pageNo, bool showLoadMore});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
  }) {
    return _then(_Loaded(
      characters: null == characters
          ? _self._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _self.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _self.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _Error implements UnicodeCharPropertiesState {
  const _Error(
      {required final List<UnicodeCharProperties> characters,
      required this.pageNo,
      this.showLoadMore = false,
      this.error})
      : _characters = characters;

  final List<UnicodeCharProperties> _characters;
  @override
  List<UnicodeCharProperties> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final int pageNo;
  @override
  @JsonKey()
  final bool showLoadMore;
  final String? error;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.showLoadMore, showLoadMore) ||
                other.showLoadMore == showLoadMore) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characters),
      pageNo,
      showLoadMore,
      error);

  @override
  String toString() {
    return 'UnicodeCharPropertiesState.error(characters: $characters, pageNo: $pageNo, showLoadMore: $showLoadMore, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) =
      __$ErrorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters,
      int pageNo,
      bool showLoadMore,
      String? error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
    Object? error = freezed,
  }) {
    return _then(_Error(
      characters: null == characters
          ? _self._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _self.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _self.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
