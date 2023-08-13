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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult? Function(dynamic data)? addToBookmarkEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult Function(dynamic data)? addToBookmarkEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPopularMovies value) isMovieBookmarkEvent,
    required TResult Function(_GetNowShongMovies value) addToBookmarkEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPopularMovies value)? isMovieBookmarkEvent,
    TResult? Function(_GetNowShongMovies value)? addToBookmarkEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? isMovieBookmarkEvent,
    TResult Function(_GetNowShongMovies value)? addToBookmarkEvent,
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
abstract class _$$_GetPopularMoviesCopyWith<$Res> {
  factory _$$_GetPopularMoviesCopyWith(
          _$_GetPopularMovies value, $Res Function(_$_GetPopularMovies) then) =
      __$$_GetPopularMoviesCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic movieId});
}

/// @nodoc
class __$$_GetPopularMoviesCopyWithImpl<$Res>
    extends _$MovieBookmarkEventCopyWithImpl<$Res, _$_GetPopularMovies>
    implements _$$_GetPopularMoviesCopyWith<$Res> {
  __$$_GetPopularMoviesCopyWithImpl(
      _$_GetPopularMovies _value, $Res Function(_$_GetPopularMovies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_$_GetPopularMovies(
      movieId: freezed == movieId ? _value.movieId! : movieId,
    ));
  }
}

/// @nodoc

class _$_GetPopularMovies implements _GetPopularMovies {
  const _$_GetPopularMovies({this.movieId});

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
            other is _$_GetPopularMovies &&
            const DeepCollectionEquality().equals(other.movieId, movieId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPopularMoviesCopyWith<_$_GetPopularMovies> get copyWith =>
      __$$_GetPopularMoviesCopyWithImpl<_$_GetPopularMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic movieId) isMovieBookmarkEvent,
    required TResult Function(dynamic data) addToBookmarkEvent,
  }) {
    return isMovieBookmarkEvent(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult? Function(dynamic data)? addToBookmarkEvent,
  }) {
    return isMovieBookmarkEvent?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult Function(dynamic data)? addToBookmarkEvent,
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
    required TResult Function(_GetPopularMovies value) isMovieBookmarkEvent,
    required TResult Function(_GetNowShongMovies value) addToBookmarkEvent,
  }) {
    return isMovieBookmarkEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPopularMovies value)? isMovieBookmarkEvent,
    TResult? Function(_GetNowShongMovies value)? addToBookmarkEvent,
  }) {
    return isMovieBookmarkEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? isMovieBookmarkEvent,
    TResult Function(_GetNowShongMovies value)? addToBookmarkEvent,
    required TResult orElse(),
  }) {
    if (isMovieBookmarkEvent != null) {
      return isMovieBookmarkEvent(this);
    }
    return orElse();
  }
}

abstract class _GetPopularMovies implements MovieBookmarkEvent {
  const factory _GetPopularMovies({final dynamic movieId}) =
      _$_GetPopularMovies;

  dynamic get movieId;
  @JsonKey(ignore: true)
  _$$_GetPopularMoviesCopyWith<_$_GetPopularMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetNowShongMoviesCopyWith<$Res> {
  factory _$$_GetNowShongMoviesCopyWith(_$_GetNowShongMovies value,
          $Res Function(_$_GetNowShongMovies) then) =
      __$$_GetNowShongMoviesCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$_GetNowShongMoviesCopyWithImpl<$Res>
    extends _$MovieBookmarkEventCopyWithImpl<$Res, _$_GetNowShongMovies>
    implements _$$_GetNowShongMoviesCopyWith<$Res> {
  __$$_GetNowShongMoviesCopyWithImpl(
      _$_GetNowShongMovies _value, $Res Function(_$_GetNowShongMovies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetNowShongMovies(
      data: freezed == data ? _value.data! : data,
    ));
  }
}

/// @nodoc

class _$_GetNowShongMovies implements _GetNowShongMovies {
  const _$_GetNowShongMovies({this.data});

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
            other is _$_GetNowShongMovies &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetNowShongMoviesCopyWith<_$_GetNowShongMovies> get copyWith =>
      __$$_GetNowShongMoviesCopyWithImpl<_$_GetNowShongMovies>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic movieId) isMovieBookmarkEvent,
    required TResult Function(dynamic data) addToBookmarkEvent,
  }) {
    return addToBookmarkEvent(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult? Function(dynamic data)? addToBookmarkEvent,
  }) {
    return addToBookmarkEvent?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? isMovieBookmarkEvent,
    TResult Function(dynamic data)? addToBookmarkEvent,
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
    required TResult Function(_GetPopularMovies value) isMovieBookmarkEvent,
    required TResult Function(_GetNowShongMovies value) addToBookmarkEvent,
  }) {
    return addToBookmarkEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPopularMovies value)? isMovieBookmarkEvent,
    TResult? Function(_GetNowShongMovies value)? addToBookmarkEvent,
  }) {
    return addToBookmarkEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? isMovieBookmarkEvent,
    TResult Function(_GetNowShongMovies value)? addToBookmarkEvent,
    required TResult orElse(),
  }) {
    if (addToBookmarkEvent != null) {
      return addToBookmarkEvent(this);
    }
    return orElse();
  }
}

abstract class _GetNowShongMovies implements MovieBookmarkEvent {
  const factory _GetNowShongMovies({final dynamic data}) = _$_GetNowShongMovies;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$_GetNowShongMoviesCopyWith<_$_GetNowShongMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieBookmarkState {
  bool? get isBookmark => throw _privateConstructorUsedError;
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
      this.isLoading,
      this.isLoadingMore,
      this.isFailure,
      this.failureMessage});

  @override
  final bool? isBookmark;
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
    return 'MovieBookmarkState(isBookmark: $isBookmark, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isFailure: $isFailure, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailsState &&
            (identical(other.isBookmark, isBookmark) ||
                other.isBookmark == isBookmark) &&
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
  int get hashCode => Object.hash(runtimeType, isBookmark, isLoading,
      isLoadingMore, isFailure, failureMessage);

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
      final bool? isLoading,
      final bool? isLoadingMore,
      final bool? isFailure,
      final String? failureMessage}) = _$_MovieDetailsState;

  @override
  bool? get isBookmark;
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
