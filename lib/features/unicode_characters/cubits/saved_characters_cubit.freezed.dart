// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_characters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavedCharactersState {
  List<UnicodeCharProperties> get characters =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnicodeCharProperties> characters) initial,
    required TResult Function(List<UnicodeCharProperties> characters) loading,
    required TResult Function(List<UnicodeCharProperties> characters) loaded,
    required TResult Function(
            String? error, List<UnicodeCharProperties> characters)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnicodeCharProperties> characters)? initial,
    TResult? Function(List<UnicodeCharProperties> characters)? loading,
    TResult? Function(List<UnicodeCharProperties> characters)? loaded,
    TResult? Function(String? error, List<UnicodeCharProperties> characters)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnicodeCharProperties> characters)? initial,
    TResult Function(List<UnicodeCharProperties> characters)? loading,
    TResult Function(List<UnicodeCharProperties> characters)? loaded,
    TResult Function(String? error, List<UnicodeCharProperties> characters)?
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

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedCharactersStateCopyWith<SavedCharactersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedCharactersStateCopyWith<$Res> {
  factory $SavedCharactersStateCopyWith(SavedCharactersState value,
          $Res Function(SavedCharactersState) then) =
      _$SavedCharactersStateCopyWithImpl<$Res, SavedCharactersState>;
  @useResult
  $Res call({List<UnicodeCharProperties> characters});
}

/// @nodoc
class _$SavedCharactersStateCopyWithImpl<$Res,
        $Val extends SavedCharactersState>
    implements $SavedCharactersStateCopyWith<$Res> {
  _$SavedCharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SavedCharactersStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UnicodeCharProperties> characters});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SavedCharactersStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$InitialImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<UnicodeCharProperties> characters =
          const <UnicodeCharProperties>[]})
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
  String toString() {
    return 'SavedCharactersState.initial(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnicodeCharProperties> characters) initial,
    required TResult Function(List<UnicodeCharProperties> characters) loading,
    required TResult Function(List<UnicodeCharProperties> characters) loaded,
    required TResult Function(
            String? error, List<UnicodeCharProperties> characters)
        error,
  }) {
    return initial(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnicodeCharProperties> characters)? initial,
    TResult? Function(List<UnicodeCharProperties> characters)? loading,
    TResult? Function(List<UnicodeCharProperties> characters)? loaded,
    TResult? Function(String? error, List<UnicodeCharProperties> characters)?
        error,
  }) {
    return initial?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnicodeCharProperties> characters)? initial,
    TResult Function(List<UnicodeCharProperties> characters)? loading,
    TResult Function(List<UnicodeCharProperties> characters)? loaded,
    TResult Function(String? error, List<UnicodeCharProperties> characters)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(characters);
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

abstract class _Initial implements SavedCharactersState {
  const factory _Initial({final List<UnicodeCharProperties> characters}) =
      _$InitialImpl;

  @override
  List<UnicodeCharProperties> get characters;

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $SavedCharactersStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UnicodeCharProperties> characters});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SavedCharactersStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$LoadingImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {final List<UnicodeCharProperties> characters =
          const <UnicodeCharProperties>[]})
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
  String toString() {
    return 'SavedCharactersState.loading(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnicodeCharProperties> characters) initial,
    required TResult Function(List<UnicodeCharProperties> characters) loading,
    required TResult Function(List<UnicodeCharProperties> characters) loaded,
    required TResult Function(
            String? error, List<UnicodeCharProperties> characters)
        error,
  }) {
    return loading(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnicodeCharProperties> characters)? initial,
    TResult? Function(List<UnicodeCharProperties> characters)? loading,
    TResult? Function(List<UnicodeCharProperties> characters)? loaded,
    TResult? Function(String? error, List<UnicodeCharProperties> characters)?
        error,
  }) {
    return loading?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnicodeCharProperties> characters)? initial,
    TResult Function(List<UnicodeCharProperties> characters)? loading,
    TResult Function(List<UnicodeCharProperties> characters)? loaded,
    TResult Function(String? error, List<UnicodeCharProperties> characters)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(characters);
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

abstract class _Loading implements SavedCharactersState {
  const factory _Loading({final List<UnicodeCharProperties> characters}) =
      _$LoadingImpl;

  @override
  List<UnicodeCharProperties> get characters;

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $SavedCharactersStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UnicodeCharProperties> characters});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SavedCharactersStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$LoadedImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<UnicodeCharProperties> characters})
      : _characters = characters;

  final List<UnicodeCharProperties> _characters;
  @override
  List<UnicodeCharProperties> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'SavedCharactersState.loaded(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnicodeCharProperties> characters) initial,
    required TResult Function(List<UnicodeCharProperties> characters) loading,
    required TResult Function(List<UnicodeCharProperties> characters) loaded,
    required TResult Function(
            String? error, List<UnicodeCharProperties> characters)
        error,
  }) {
    return loaded(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnicodeCharProperties> characters)? initial,
    TResult? Function(List<UnicodeCharProperties> characters)? loading,
    TResult? Function(List<UnicodeCharProperties> characters)? loaded,
    TResult? Function(String? error, List<UnicodeCharProperties> characters)?
        error,
  }) {
    return loaded?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnicodeCharProperties> characters)? initial,
    TResult Function(List<UnicodeCharProperties> characters)? loading,
    TResult Function(List<UnicodeCharProperties> characters)? loaded,
    TResult Function(String? error, List<UnicodeCharProperties> characters)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters);
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

abstract class _Loaded implements SavedCharactersState {
  const factory _Loaded(
      {required final List<UnicodeCharProperties> characters}) = _$LoadedImpl;

  @override
  List<UnicodeCharProperties> get characters;

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $SavedCharactersStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, List<UnicodeCharProperties> characters});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SavedCharactersStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? characters = null,
  }) {
    return _then(_$ErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<UnicodeCharProperties>,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      {this.error,
      final List<UnicodeCharProperties> characters =
          const <UnicodeCharProperties>[]})
      : _characters = characters;

  @override
  final String? error;
  final List<UnicodeCharProperties> _characters;
  @override
  @JsonKey()
  List<UnicodeCharProperties> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'SavedCharactersState.error(error: $error, characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, const DeepCollectionEquality().hash(_characters));

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnicodeCharProperties> characters) initial,
    required TResult Function(List<UnicodeCharProperties> characters) loading,
    required TResult Function(List<UnicodeCharProperties> characters) loaded,
    required TResult Function(
            String? error, List<UnicodeCharProperties> characters)
        error,
  }) {
    return error(this.error, characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnicodeCharProperties> characters)? initial,
    TResult? Function(List<UnicodeCharProperties> characters)? loading,
    TResult? Function(List<UnicodeCharProperties> characters)? loaded,
    TResult? Function(String? error, List<UnicodeCharProperties> characters)?
        error,
  }) {
    return error?.call(this.error, characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnicodeCharProperties> characters)? initial,
    TResult Function(List<UnicodeCharProperties> characters)? loading,
    TResult Function(List<UnicodeCharProperties> characters)? loaded,
    TResult Function(String? error, List<UnicodeCharProperties> characters)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, characters);
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

abstract class _Error implements SavedCharactersState {
  const factory _Error(
      {final String? error,
      final List<UnicodeCharProperties> characters}) = _$ErrorImpl;

  String? get error;
  @override
  List<UnicodeCharProperties> get characters;

  /// Create a copy of SavedCharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
