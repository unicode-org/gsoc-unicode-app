// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unicode_characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnicodeCharPropertiesEvent {
  int get page => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String? searchQuery) getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String? searchQuery)? getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String? searchQuery)? getCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UnicodeCharPropertiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnicodeCharPropertiesEventCopyWith<UnicodeCharPropertiesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnicodeCharPropertiesEventCopyWith<$Res> {
  factory $UnicodeCharPropertiesEventCopyWith(UnicodeCharPropertiesEvent value,
          $Res Function(UnicodeCharPropertiesEvent) then) =
      _$UnicodeCharPropertiesEventCopyWithImpl<$Res,
          UnicodeCharPropertiesEvent>;
  @useResult
  $Res call({int page, String? searchQuery});
}

/// @nodoc
class _$UnicodeCharPropertiesEventCopyWithImpl<$Res,
        $Val extends UnicodeCharPropertiesEvent>
    implements $UnicodeCharPropertiesEventCopyWith<$Res> {
  _$UnicodeCharPropertiesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnicodeCharPropertiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchQuery = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCharactersImplCopyWith<$Res>
    implements $UnicodeCharPropertiesEventCopyWith<$Res> {
  factory _$$GetCharactersImplCopyWith(
          _$GetCharactersImpl value, $Res Function(_$GetCharactersImpl) then) =
      __$$GetCharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String? searchQuery});
}

/// @nodoc
class __$$GetCharactersImplCopyWithImpl<$Res>
    extends _$UnicodeCharPropertiesEventCopyWithImpl<$Res, _$GetCharactersImpl>
    implements _$$GetCharactersImplCopyWith<$Res> {
  __$$GetCharactersImplCopyWithImpl(
      _$GetCharactersImpl _value, $Res Function(_$GetCharactersImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnicodeCharPropertiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchQuery = freezed,
  }) {
    return _then(_$GetCharactersImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetCharactersImpl implements _GetCharacters {
  const _$GetCharactersImpl({required this.page, this.searchQuery});

  @override
  final int page;
  @override
  final String? searchQuery;

  @override
  String toString() {
    return 'UnicodeCharPropertiesEvent.getCharacters(page: $page, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCharactersImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, searchQuery);

  /// Create a copy of UnicodeCharPropertiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      __$$GetCharactersImplCopyWithImpl<_$GetCharactersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, String? searchQuery) getCharacters,
  }) {
    return getCharacters(page, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String? searchQuery)? getCharacters,
  }) {
    return getCharacters?.call(page, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String? searchQuery)? getCharacters,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(page, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class _GetCharacters implements UnicodeCharPropertiesEvent {
  const factory _GetCharacters(
      {required final int page,
      final String? searchQuery}) = _$GetCharactersImpl;

  @override
  int get page;
  @override
  String? get searchQuery;

  /// Create a copy of UnicodeCharPropertiesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UnicodeCharPropertiesState {
  List<UnicodeCharProperties> get characters =>
      throw _privateConstructorUsedError;
  int get pageNo => throw _privateConstructorUsedError;
  bool get showLoadMore => throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnicodeCharPropertiesStateCopyWith<UnicodeCharPropertiesState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory $UnicodeCharPropertiesStateCopyWith(UnicodeCharPropertiesState value,
          $Res Function(UnicodeCharPropertiesState) then) =
      _$UnicodeCharPropertiesStateCopyWithImpl<$Res,
          UnicodeCharPropertiesState>;
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters, int pageNo, bool showLoadMore});
}

/// @nodoc
class _$UnicodeCharPropertiesStateCopyWithImpl<$Res,
        $Val extends UnicodeCharPropertiesState>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  _$UnicodeCharPropertiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _value.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters, int pageNo, bool showLoadMore});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UnicodeCharPropertiesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
  }) {
    return _then(_$InitialImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _value.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
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

  @override
  String toString() {
    return 'UnicodeCharPropertiesState.initial(characters: $characters, pageNo: $pageNo, showLoadMore: $showLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.showLoadMore, showLoadMore) ||
                other.showLoadMore == showLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), pageNo, showLoadMore);

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
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
    return initial(characters, pageNo, showLoadMore);
  }

  @override
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
    return initial?.call(characters, pageNo, showLoadMore);
  }

  @override
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
    if (initial != null) {
      return initial(characters, pageNo, showLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UnicodeCharPropertiesState {
  const factory _Initial(
      {final List<UnicodeCharProperties> characters,
      final int pageNo,
      final bool showLoadMore}) = _$InitialImpl;

  @override
  List<UnicodeCharProperties> get characters;
  @override
  int get pageNo;
  @override
  bool get showLoadMore;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters, int pageNo, bool showLoadMore});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UnicodeCharPropertiesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
  }) {
    return _then(_$LoadingImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _value.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
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

  @override
  String toString() {
    return 'UnicodeCharPropertiesState.loading(characters: $characters, pageNo: $pageNo, showLoadMore: $showLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.showLoadMore, showLoadMore) ||
                other.showLoadMore == showLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), pageNo, showLoadMore);

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
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
    return loading(characters, pageNo, showLoadMore);
  }

  @override
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
    return loading?.call(characters, pageNo, showLoadMore);
  }

  @override
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
    if (loading != null) {
      return loading(characters, pageNo, showLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UnicodeCharPropertiesState {
  const factory _Loading(
      {required final List<UnicodeCharProperties> characters,
      required final int pageNo,
      final bool showLoadMore}) = _$LoadingImpl;

  @override
  List<UnicodeCharProperties> get characters;
  @override
  int get pageNo;
  @override
  bool get showLoadMore;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters, int pageNo, bool showLoadMore});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$UnicodeCharPropertiesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
  }) {
    return _then(_$LoadedImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _value.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
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

  @override
  String toString() {
    return 'UnicodeCharPropertiesState.loaded(characters: $characters, pageNo: $pageNo, showLoadMore: $showLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.showLoadMore, showLoadMore) ||
                other.showLoadMore == showLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_characters), pageNo, showLoadMore);

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
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
    return loaded(characters, pageNo, showLoadMore);
  }

  @override
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
    return loaded?.call(characters, pageNo, showLoadMore);
  }

  @override
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
    if (loaded != null) {
      return loaded(characters, pageNo, showLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UnicodeCharPropertiesState {
  const factory _Loaded(
      {required final List<UnicodeCharProperties> characters,
      required final int pageNo,
      final bool showLoadMore}) = _$LoadedImpl;

  @override
  List<UnicodeCharProperties> get characters;
  @override
  int get pageNo;
  @override
  bool get showLoadMore;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $UnicodeCharPropertiesStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UnicodeCharProperties> characters,
      int pageNo,
      bool showLoadMore,
      String? error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UnicodeCharPropertiesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? pageNo = null,
    Object? showLoadMore = null,
    Object? error = freezed,
  }) {
    return _then(_$ErrorImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      showLoadMore: null == showLoadMore
          ? _value.showLoadMore
          : showLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
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
  @override
  final String? error;

  @override
  String toString() {
    return 'UnicodeCharPropertiesState.error(characters: $characters, pageNo: $pageNo, showLoadMore: $showLoadMore, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
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

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
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
    return error(characters, pageNo, showLoadMore, this.error);
  }

  @override
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
    return error?.call(characters, pageNo, showLoadMore, this.error);
  }

  @override
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
    if (error != null) {
      return error(characters, pageNo, showLoadMore, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UnicodeCharPropertiesState {
  const factory _Error(
      {required final List<UnicodeCharProperties> characters,
      required final int pageNo,
      final bool showLoadMore,
      final String? error}) = _$ErrorImpl;

  @override
  List<UnicodeCharProperties> get characters;
  @override
  int get pageNo;
  @override
  bool get showLoadMore;
  String? get error;

  /// Create a copy of UnicodeCharPropertiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
