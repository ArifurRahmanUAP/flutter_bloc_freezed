// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_bookmark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieBookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic movieId) isMovieBookmarkEvent,
    required TResult Function(dynamic data) addToBookmarkEvent,
    required TResult Function(dynamic dataBaseHelper) getBookmarkEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult? Function(dynamic data)? addToBookmarkEvent,
    TResult? Function(dynamic dataBaseHelper)? getBookmarkEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult Function(dynamic data)? addToBookmarkEvent,
    TResult Function(dynamic dataBaseHelper)? getBookmarkEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsMovieBookmarkEvent value) isMovieBookmarkEvent,
    required TResult Function(_AddToBookmarkEvent value) addToBookmarkEvent,
    required TResult Function(_GetBookmarkEvent value) getBookmarkEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsMovieBookmarkEvent value)? isMovieBookmarkEvent,
    TResult? Function(_AddToBookmarkEvent value)? addToBookmarkEvent,
    TResult? Function(_GetBookmarkEvent value)? getBookmarkEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsMovieBookmarkEvent value)? isMovieBookmarkEvent,
    TResult Function(_AddToBookmarkEvent value)? addToBookmarkEvent,
    TResult Function(_GetBookmarkEvent value)? getBookmarkEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieBookmarkEventCopyWith<$Res> {
  factory $MovieBookmarkEventCopyWith(
          MovieBookmarkEvent value, $Res Function(MovieBookmarkEvent) then) =
      _$MovieBookmarkEventCopyWithImpl<$Res, MovieBookmarkEvent>;
}

/// @nodoc
class _$MovieBookmarkEventCopyWithImpl<$Res, $Val extends MovieBookmarkEvent>
    implements $MovieBookmarkEventCopyWith<$Res> {
  _$MovieBookmarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IsMovieBookmarkEventCopyWith<$Res> {
  factory _$$_IsMovieBookmarkEventCopyWith(_$_IsMovieBookmarkEvent value,
          $Res Function(_$_IsMovieBookmarkEvent) then) =
      __$$_IsMovieBookmarkEventCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic movieId});
}

/// @nodoc
class __$$_IsMovieBookmarkEventCopyWithImpl<$Res>
    extends _$MovieBookmarkEventCopyWithImpl<$Res, _$_IsMovieBookmarkEvent>
    implements _$$_IsMovieBookmarkEventCopyWith<$Res> {
  __$$_IsMovieBookmarkEventCopyWithImpl(_$_IsMovieBookmarkEvent _value,
      $Res Function(_$_IsMovieBookmarkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_$_IsMovieBookmarkEvent(
      movieId: freezed == movieId ? _value.movieId! : movieId,
    ));
  }
}

/// @nodoc

class _$_IsMovieBookmarkEvent implements _IsMovieBookmarkEvent {
  const _$_IsMovieBookmarkEvent({this.movieId});

  @override
  final dynamic movieId;

  @override
  String toString() {
    return 'MovieBookmarkEvent.isMovieBookmarkEvent(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsMovieBookmarkEvent &&
            const DeepCollectionEquality().equals(other.movieId, movieId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsMovieBookmarkEventCopyWith<_$_IsMovieBookmarkEvent> get copyWith =>
      __$$_IsMovieBookmarkEventCopyWithImpl<_$_IsMovieBookmarkEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic movieId) isMovieBookmarkEvent,
    required TResult Function(dynamic data) addToBookmarkEvent,
    required TResult Function(dynamic dataBaseHelper) getBookmarkEvent,
  }) {
    return isMovieBookmarkEvent(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult? Function(dynamic data)? addToBookmarkEvent,
    TResult? Function(dynamic dataBaseHelper)? getBookmarkEvent,
  }) {
    return isMovieBookmarkEvent?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult Function(dynamic data)? addToBookmarkEvent,
    TResult Function(dynamic dataBaseHelper)? getBookmarkEvent,
    required TResult orElse(),
  }) {
    if (isMovieBookmarkEvent != null) {
      return isMovieBookmarkEvent(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsMovieBookmarkEvent value) isMovieBookmarkEvent,
    required TResult Function(_AddToBookmarkEvent value) addToBookmarkEvent,
    required TResult Function(_GetBookmarkEvent value) getBookmarkEvent,
  }) {
    return isMovieBookmarkEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsMovieBookmarkEvent value)? isMovieBookmarkEvent,
    TResult? Function(_AddToBookmarkEvent value)? addToBookmarkEvent,
    TResult? Function(_GetBookmarkEvent value)? getBookmarkEvent,
  }) {
    return isMovieBookmarkEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsMovieBookmarkEvent value)? isMovieBookmarkEvent,
    TResult Function(_AddToBookmarkEvent value)? addToBookmarkEvent,
    TResult Function(_GetBookmarkEvent value)? getBookmarkEvent,
    required TResult orElse(),
  }) {
    if (isMovieBookmarkEvent != null) {
      return isMovieBookmarkEvent(this);
    }
    return orElse();
  }
}

abstract class _IsMovieBookmarkEvent implements MovieBookmarkEvent {
  const factory _IsMovieBookmarkEvent({final dynamic movieId}) =
      _$_IsMovieBookmarkEvent;

  dynamic get movieId;
  @JsonKey(ignore: true)
  _$$_IsMovieBookmarkEventCopyWith<_$_IsMovieBookmarkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddToBookmarkEventCopyWith<$Res> {
  factory _$$_AddToBookmarkEventCopyWith(_$_AddToBookmarkEvent value,
          $Res Function(_$_AddToBookmarkEvent) then) =
      __$$_AddToBookmarkEventCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$_AddToBookmarkEventCopyWithImpl<$Res>
    extends _$MovieBookmarkEventCopyWithImpl<$Res, _$_AddToBookmarkEvent>
    implements _$$_AddToBookmarkEventCopyWith<$Res> {
  __$$_AddToBookmarkEventCopyWithImpl(
      _$_AddToBookmarkEvent _value, $Res Function(_$_AddToBookmarkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_AddToBookmarkEvent(
      data: freezed == data ? _value.data! : data,
    ));
  }
}

/// @nodoc

class _$_AddToBookmarkEvent implements _AddToBookmarkEvent {
  const _$_AddToBookmarkEvent({this.data});

  @override
  final dynamic data;

  @override
  String toString() {
    return 'MovieBookmarkEvent.addToBookmarkEvent(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToBookmarkEvent &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToBookmarkEventCopyWith<_$_AddToBookmarkEvent> get copyWith =>
      __$$_AddToBookmarkEventCopyWithImpl<_$_AddToBookmarkEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic movieId) isMovieBookmarkEvent,
    required TResult Function(dynamic data) addToBookmarkEvent,
    required TResult Function(dynamic dataBaseHelper) getBookmarkEvent,
  }) {
    return addToBookmarkEvent(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult? Function(dynamic data)? addToBookmarkEvent,
    TResult? Function(dynamic dataBaseHelper)? getBookmarkEvent,
  }) {
    return addToBookmarkEvent?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult Function(dynamic data)? addToBookmarkEvent,
    TResult Function(dynamic dataBaseHelper)? getBookmarkEvent,
    required TResult orElse(),
  }) {
    if (addToBookmarkEvent != null) {
      return addToBookmarkEvent(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsMovieBookmarkEvent value) isMovieBookmarkEvent,
    required TResult Function(_AddToBookmarkEvent value) addToBookmarkEvent,
    required TResult Function(_GetBookmarkEvent value) getBookmarkEvent,
  }) {
    return addToBookmarkEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsMovieBookmarkEvent value)? isMovieBookmarkEvent,
    TResult? Function(_AddToBookmarkEvent value)? addToBookmarkEvent,
    TResult? Function(_GetBookmarkEvent value)? getBookmarkEvent,
  }) {
    return addToBookmarkEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsMovieBookmarkEvent value)? isMovieBookmarkEvent,
    TResult Function(_AddToBookmarkEvent value)? addToBookmarkEvent,
    TResult Function(_GetBookmarkEvent value)? getBookmarkEvent,
    required TResult orElse(),
  }) {
    if (addToBookmarkEvent != null) {
      return addToBookmarkEvent(this);
    }
    return orElse();
  }
}

abstract class _AddToBookmarkEvent implements MovieBookmarkEvent {
  const factory _AddToBookmarkEvent({final dynamic data}) =
      _$_AddToBookmarkEvent;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$_AddToBookmarkEventCopyWith<_$_AddToBookmarkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetBookmarkEventCopyWith<$Res> {
  factory _$$_GetBookmarkEventCopyWith(
          _$_GetBookmarkEvent value, $Res Function(_$_GetBookmarkEvent) then) =
      __$$_GetBookmarkEventCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic dataBaseHelper});
}

/// @nodoc
class __$$_GetBookmarkEventCopyWithImpl<$Res>
    extends _$MovieBookmarkEventCopyWithImpl<$Res, _$_GetBookmarkEvent>
    implements _$$_GetBookmarkEventCopyWith<$Res> {
  __$$_GetBookmarkEventCopyWithImpl(
      _$_GetBookmarkEvent _value, $Res Function(_$_GetBookmarkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataBaseHelper = freezed,
  }) {
    return _then(_$_GetBookmarkEvent(
      dataBaseHelper:
          freezed == dataBaseHelper ? _value.dataBaseHelper! : dataBaseHelper,
    ));
  }
}

/// @nodoc

class _$_GetBookmarkEvent implements _GetBookmarkEvent {
  const _$_GetBookmarkEvent({this.dataBaseHelper});

  @override
  final dynamic dataBaseHelper;

  @override
  String toString() {
    return 'MovieBookmarkEvent.getBookmarkEvent(dataBaseHelper: $dataBaseHelper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetBookmarkEvent &&
            const DeepCollectionEquality()
                .equals(other.dataBaseHelper, dataBaseHelper));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(dataBaseHelper));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetBookmarkEventCopyWith<_$_GetBookmarkEvent> get copyWith =>
      __$$_GetBookmarkEventCopyWithImpl<_$_GetBookmarkEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic movieId) isMovieBookmarkEvent,
    required TResult Function(dynamic data) addToBookmarkEvent,
    required TResult Function(dynamic dataBaseHelper) getBookmarkEvent,
  }) {
    return getBookmarkEvent(dataBaseHelper);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult? Function(dynamic data)? addToBookmarkEvent,
    TResult? Function(dynamic dataBaseHelper)? getBookmarkEvent,
  }) {
    return getBookmarkEvent?.call(dataBaseHelper);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult Function(dynamic data)? addToBookmarkEvent,
    TResult Function(dynamic dataBaseHelper)? getBookmarkEvent,
    required TResult orElse(),
  }) {
    if (getBookmarkEvent != null) {
      return getBookmarkEvent(dataBaseHelper);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsMovieBookmarkEvent value) isMovieBookmarkEvent,
    required TResult Function(_AddToBookmarkEvent value) addToBookmarkEvent,
    required TResult Function(_GetBookmarkEvent value) getBookmarkEvent,
  }) {
    return getBookmarkEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsMovieBookmarkEvent value)? isMovieBookmarkEvent,
    TResult? Function(_AddToBookmarkEvent value)? addToBookmarkEvent,
    TResult? Function(_GetBookmarkEvent value)? getBookmarkEvent,
  }) {
    return getBookmarkEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsMovieBookmarkEvent value)? isMovieBookmarkEvent,
    TResult Function(_AddToBookmarkEvent value)? addToBookmarkEvent,
    TResult Function(_GetBookmarkEvent value)? getBookmarkEvent,
    required TResult orElse(),
  }) {
    if (getBookmarkEvent != null) {
      return getBookmarkEvent(this);
    }
    return orElse();
  }
}

abstract class _GetBookmarkEvent implements MovieBookmarkEvent {
  const factory _GetBookmarkEvent({final dynamic dataBaseHelper}) =
      _$_GetBookmarkEvent;

  dynamic get dataBaseHelper;
  @JsonKey(ignore: true)
  _$$_GetBookmarkEventCopyWith<_$_GetBookmarkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieBookmarkState {
  bool? get isBookmark => throw _privateConstructorUsedError;
  List<GetBookmarks>? get bookmarksData => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isLoadingMore => throw _privateConstructorUsedError;
  bool? get isFailure => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieBookmarkStateCopyWith<MovieBookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieBookmarkStateCopyWith<$Res> {
  factory $MovieBookmarkStateCopyWith(
          MovieBookmarkState value, $Res Function(MovieBookmarkState) then) =
      _$MovieBookmarkStateCopyWithImpl<$Res, MovieBookmarkState>;
  @useResult
  $Res call(
      {bool? isBookmark,
      List<GetBookmarks>? bookmarksData,
      bool? isLoading,
      bool? isLoadingMore,
      bool? isFailure,
      String? failureMessage});
}

/// @nodoc
class _$MovieBookmarkStateCopyWithImpl<$Res, $Val extends MovieBookmarkState>
    implements $MovieBookmarkStateCopyWith<$Res> {
  _$MovieBookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookmark = freezed,
    Object? bookmarksData = freezed,
    Object? isLoading = freezed,
    Object? isLoadingMore = freezed,
    Object? isFailure = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isBookmark: freezed == isBookmark
          ? _value.isBookmark
          : isBookmark // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookmarksData: freezed == bookmarksData
          ? _value.bookmarksData
          : bookmarksData // ignore: cast_nullable_to_non_nullable
              as List<GetBookmarks>?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoadingMore: freezed == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFailure: freezed == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieDetailsStateCopyWith<$Res>
    implements $MovieBookmarkStateCopyWith<$Res> {
  factory _$$_MovieDetailsStateCopyWith(_$_MovieDetailsState value,
          $Res Function(_$_MovieDetailsState) then) =
      __$$_MovieDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isBookmark,
      List<GetBookmarks>? bookmarksData,
      bool? isLoading,
      bool? isLoadingMore,
      bool? isFailure,
      String? failureMessage});
}

/// @nodoc
class __$$_MovieDetailsStateCopyWithImpl<$Res>
    extends _$MovieBookmarkStateCopyWithImpl<$Res, _$_MovieDetailsState>
    implements _$$_MovieDetailsStateCopyWith<$Res> {
  __$$_MovieDetailsStateCopyWithImpl(
      _$_MovieDetailsState _value, $Res Function(_$_MovieDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookmark = freezed,
    Object? bookmarksData = freezed,
    Object? isLoading = freezed,
    Object? isLoadingMore = freezed,
    Object? isFailure = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_$_MovieDetailsState(
      isBookmark: freezed == isBookmark
          ? _value.isBookmark
          : isBookmark // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookmarksData: freezed == bookmarksData
          ? _value._bookmarksData
          : bookmarksData // ignore: cast_nullable_to_non_nullable
              as List<GetBookmarks>?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoadingMore: freezed == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFailure: freezed == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool?,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MovieDetailsState implements _MovieDetailsState {
  _$_MovieDetailsState(
      {this.isBookmark,
      final List<GetBookmarks>? bookmarksData,
      this.isLoading,
      this.isLoadingMore,
      this.isFailure,
      this.failureMessage})
      : _bookmarksData = bookmarksData;

  @override
  final bool? isBookmark;
  final List<GetBookmarks>? _bookmarksData;
  @override
  List<GetBookmarks>? get bookmarksData {
    final value = _bookmarksData;
    if (value == null) return null;
    if (_bookmarksData is EqualUnmodifiableListView) return _bookmarksData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isLoading;
  @override
  final bool? isLoadingMore;
  @override
  final bool? isFailure;
  @override
  final String? failureMessage;

  @override
  String toString() {
    return 'MovieBookmarkState(isBookmark: $isBookmark, bookmarksData: $bookmarksData, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isFailure: $isFailure, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailsState &&
            (identical(other.isBookmark, isBookmark) ||
                other.isBookmark == isBookmark) &&
            const DeepCollectionEquality()
                .equals(other._bookmarksData, _bookmarksData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isBookmark,
      const DeepCollectionEquality().hash(_bookmarksData),
      isLoading,
      isLoadingMore,
      isFailure,
      failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailsStateCopyWith<_$_MovieDetailsState> get copyWith =>
      __$$_MovieDetailsStateCopyWithImpl<_$_MovieDetailsState>(
          this, _$identity);
}

abstract class _MovieDetailsState implements MovieBookmarkState {
  factory _MovieDetailsState(
      {final bool? isBookmark,
      final List<GetBookmarks>? bookmarksData,
      final bool? isLoading,
      final bool? isLoadingMore,
      final bool? isFailure,
      final String? failureMessage}) = _$_MovieDetailsState;

  @override
  bool? get isBookmark;
  @override
  List<GetBookmarks>? get bookmarksData;
  @override
  bool? get isLoading;
  @override
  bool? get isLoadingMore;
  @override
  bool? get isFailure;
  @override
  String? get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsStateCopyWith<_$_MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
