// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<Character> get characters => throw _privateConstructorUsedError;
  bool get isNextPageAvailable => throw _privateConstructorUsedError;
  bool get isLoadingNextPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterListStateCopyWith<CharacterListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterListStateCopyWith<$Res> {
  factory $CharacterListStateCopyWith(
          CharacterListState value, $Res Function(CharacterListState) then) =
      _$CharacterListStateCopyWithImpl<$Res, CharacterListState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      int page,
      String errorMessage,
      List<Character> characters,
      bool isNextPageAvailable,
      bool isLoadingNextPage});
}

/// @nodoc
class _$CharacterListStateCopyWithImpl<$Res, $Val extends CharacterListState>
    implements $CharacterListStateCopyWith<$Res> {
  _$CharacterListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? page = null,
    Object? errorMessage = null,
    Object? characters = null,
    Object? isNextPageAvailable = null,
    Object? isLoadingNextPage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingNextPage: null == isLoadingNextPage
          ? _value.isLoadingNextPage
          : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterListStateCopyWith<$Res>
    implements $CharacterListStateCopyWith<$Res> {
  factory _$$_CharacterListStateCopyWith(_$_CharacterListState value,
          $Res Function(_$_CharacterListState) then) =
      __$$_CharacterListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      int page,
      String errorMessage,
      List<Character> characters,
      bool isNextPageAvailable,
      bool isLoadingNextPage});
}

/// @nodoc
class __$$_CharacterListStateCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res, _$_CharacterListState>
    implements _$$_CharacterListStateCopyWith<$Res> {
  __$$_CharacterListStateCopyWithImpl(
      _$_CharacterListState _value, $Res Function(_$_CharacterListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? page = null,
    Object? errorMessage = null,
    Object? characters = null,
    Object? isNextPageAvailable = null,
    Object? isLoadingNextPage = null,
  }) {
    return _then(_$_CharacterListState(
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isLoadingNextPage
          ? _value.isLoadingNextPage
          : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CharacterListState implements _CharacterListState {
  _$_CharacterListState(
      [this.isLoading = false,
      this.isError = false,
      this.page = 0,
      this.errorMessage = '',
      final List<Character> characters = const [],
      this.isNextPageAvailable = true,
      this.isLoadingNextPage = false])
      : _characters = characters;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String errorMessage;
  final List<Character> _characters;
  @override
  @JsonKey()
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final bool isNextPageAvailable;
  @override
  @JsonKey()
  final bool isLoadingNextPage;

  @override
  String toString() {
    return 'CharacterListState(isLoading: $isLoading, isError: $isError, page: $page, errorMessage: $errorMessage, characters: $characters, isNextPageAvailable: $isNextPageAvailable, isLoadingNextPage: $isLoadingNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterListState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable) &&
            (identical(other.isLoadingNextPage, isLoadingNextPage) ||
                other.isLoadingNextPage == isLoadingNextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      page,
      errorMessage,
      const DeepCollectionEquality().hash(_characters),
      isNextPageAvailable,
      isLoadingNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterListStateCopyWith<_$_CharacterListState> get copyWith =>
      __$$_CharacterListStateCopyWithImpl<_$_CharacterListState>(
          this, _$identity);
}

abstract class _CharacterListState implements CharacterListState {
  factory _CharacterListState(
      [final bool isLoading,
      final bool isError,
      final int page,
      final String errorMessage,
      final List<Character> characters,
      final bool isNextPageAvailable,
      final bool isLoadingNextPage]) = _$_CharacterListState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  int get page;
  @override
  String get errorMessage;
  @override
  List<Character> get characters;
  @override
  bool get isNextPageAvailable;
  @override
  bool get isLoadingNextPage;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterListStateCopyWith<_$_CharacterListState> get copyWith =>
      throw _privateConstructorUsedError;
}
