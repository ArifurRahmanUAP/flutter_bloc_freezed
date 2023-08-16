// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailsEvent {
  dynamic get movieId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic movieId) getMovieDetails,
    required TResult Function(dynamic movieId) isMovieBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? getMovieDetails,
    TResult? Function(dynamic movieId)? isMovieBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? getMovieDetails,
    TResult Function(dynamic movieId)? isMovieBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetails value) getMovieDetails,
    required TResult Function(_IsMovieBookmark value) isMovieBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovieDetails value)? getMovieDetails,
    TResult? Function(_IsMovieBookmark value)? isMovieBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetails value)? getMovieDetails,
    TResult Function(_IsMovieBookmark value)? isMovieBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsEventCopyWith<$Res> {
  factory $MovieDetailsEventCopyWith(
          MovieDetailsEvent value, $Res Function(MovieDetailsEvent) then) =
      _$MovieDetailsEventCopyWithImpl<$Res, MovieDetailsEvent>;
  @useResult
  $Res call({dynamic movieId});
}

/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res, $Val extends MovieDetailsEvent>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: freezed == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMovieDetailsCopyWith<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  factory _$$_GetMovieDetailsCopyWith(
          _$_GetMovieDetails value, $Res Function(_$_GetMovieDetails) then) =
      __$$_GetMovieDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic movieId});
}

/// @nodoc
class __$$_GetMovieDetailsCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res, _$_GetMovieDetails>
    implements _$$_GetMovieDetailsCopyWith<$Res> {
  __$$_GetMovieDetailsCopyWithImpl(
      _$_GetMovieDetails _value, $Res Function(_$_GetMovieDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_$_GetMovieDetails(
      movieId: freezed == movieId ? _value.movieId! : movieId,
    ));
  }
}

/// @nodoc

class _$_GetMovieDetails implements _GetMovieDetails {
  _$_GetMovieDetails({this.movieId});

  @override
  final dynamic movieId;

  @override
  String toString() {
    return 'MovieDetailsEvent.getMovieDetails(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieDetails &&
            const DeepCollectionEquality().equals(other.movieId, movieId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMovieDetailsCopyWith<_$_GetMovieDetails> get copyWith =>
      __$$_GetMovieDetailsCopyWithImpl<_$_GetMovieDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic movieId) getMovieDetails,
    required TResult Function(dynamic movieId) isMovieBookmark,
  }) {
    return getMovieDetails(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? getMovieDetails,
    TResult? Function(dynamic movieId)? isMovieBookmark,
  }) {
    return getMovieDetails?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? getMovieDetails,
    TResult Function(dynamic movieId)? isMovieBookmark,
    required TResult orElse(),
  }) {
    if (getMovieDetails != null) {
      return getMovieDetails(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetails value) getMovieDetails,
    required TResult Function(_IsMovieBookmark value) isMovieBookmark,
  }) {
    return getMovieDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovieDetails value)? getMovieDetails,
    TResult? Function(_IsMovieBookmark value)? isMovieBookmark,
  }) {
    return getMovieDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetails value)? getMovieDetails,
    TResult Function(_IsMovieBookmark value)? isMovieBookmark,
    required TResult orElse(),
  }) {
    if (getMovieDetails != null) {
      return getMovieDetails(this);
    }
    return orElse();
  }
}

abstract class _GetMovieDetails implements MovieDetailsEvent {
  factory _GetMovieDetails({final dynamic movieId}) = _$_GetMovieDetails;

  @override
  dynamic get movieId;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieDetailsCopyWith<_$_GetMovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsMovieBookmarkCopyWith<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  factory _$$_IsMovieBookmarkCopyWith(
          _$_IsMovieBookmark value, $Res Function(_$_IsMovieBookmark) then) =
      __$$_IsMovieBookmarkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic movieId});
}

/// @nodoc
class __$$_IsMovieBookmarkCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res, _$_IsMovieBookmark>
    implements _$$_IsMovieBookmarkCopyWith<$Res> {
  __$$_IsMovieBookmarkCopyWithImpl(
      _$_IsMovieBookmark _value, $Res Function(_$_IsMovieBookmark) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_$_IsMovieBookmark(
      movieId: freezed == movieId ? _value.movieId! : movieId,
    ));
  }
}

/// @nodoc

class _$_IsMovieBookmark implements _IsMovieBookmark {
  _$_IsMovieBookmark({this.movieId});

  @override
  final dynamic movieId;

  @override
  String toString() {
    return 'MovieDetailsEvent.isMovieBookmark(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsMovieBookmark &&
            const DeepCollectionEquality().equals(other.movieId, movieId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsMovieBookmarkCopyWith<_$_IsMovieBookmark> get copyWith =>
      __$$_IsMovieBookmarkCopyWithImpl<_$_IsMovieBookmark>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic movieId) getMovieDetails,
    required TResult Function(dynamic movieId) isMovieBookmark,
  }) {
    return isMovieBookmark(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic movieId)? getMovieDetails,
    TResult? Function(dynamic movieId)? isMovieBookmark,
  }) {
    return isMovieBookmark?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic movieId)? getMovieDetails,
    TResult Function(dynamic movieId)? isMovieBookmark,
    required TResult orElse(),
  }) {
    if (isMovieBookmark != null) {
      return isMovieBookmark(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMovieDetails value) getMovieDetails,
    required TResult Function(_IsMovieBookmark value) isMovieBookmark,
  }) {
    return isMovieBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMovieDetails value)? getMovieDetails,
    TResult? Function(_IsMovieBookmark value)? isMovieBookmark,
  }) {
    return isMovieBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMovieDetails value)? getMovieDetails,
    TResult Function(_IsMovieBookmark value)? isMovieBookmark,
    required TResult orElse(),
  }) {
    if (isMovieBookmark != null) {
      return isMovieBookmark(this);
    }
    return orElse();
  }
}

abstract class _IsMovieBookmark implements MovieDetailsEvent {
  factory _IsMovieBookmark({final dynamic movieId}) = _$_IsMovieBookmark;

  @override
  dynamic get movieId;
  @override
  @JsonKey(ignore: true)
  _$$_IsMovieBookmarkCopyWith<_$_IsMovieBookmark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailsState {
  MovieDetails? get movieDetails => throw _privateConstructorUsedError;
  bool? get isBookmark => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isLoadingMore => throw _privateConstructorUsedError;
  bool? get isFailure => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsStateCopyWith<MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res, MovieDetailsState>;
  @useResult
  $Res call(
      {MovieDetails? movieDetails,
      bool? isBookmark,
      bool? isLoading,
      bool? isLoadingMore,
      bool? isFailure,
      String? failureMessage});
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res, $Val extends MovieDetailsState>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetails = freezed,
    Object? isBookmark = freezed,
    Object? isLoading = freezed,
    Object? isLoadingMore = freezed,
    Object? isFailure = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      movieDetails: freezed == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetails?,
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
    implements $MovieDetailsStateCopyWith<$Res> {
  factory _$$_MovieDetailsStateCopyWith(_$_MovieDetailsState value,
          $Res Function(_$_MovieDetailsState) then) =
      __$$_MovieDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MovieDetails? movieDetails,
      bool? isBookmark,
      bool? isLoading,
      bool? isLoadingMore,
      bool? isFailure,
      String? failureMessage});
}

/// @nodoc
class __$$_MovieDetailsStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$_MovieDetailsState>
    implements _$$_MovieDetailsStateCopyWith<$Res> {
  __$$_MovieDetailsStateCopyWithImpl(
      _$_MovieDetailsState _value, $Res Function(_$_MovieDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetails = freezed,
    Object? isBookmark = freezed,
    Object? isLoading = freezed,
    Object? isLoadingMore = freezed,
    Object? isFailure = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_$_MovieDetailsState(
      movieDetails: freezed == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetails?,
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
      {this.movieDetails,
      this.isBookmark,
      this.isLoading,
      this.isLoadingMore,
      this.isFailure,
      this.failureMessage});

  @override
  final MovieDetails? movieDetails;
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
    return 'MovieDetailsState(movieDetails: $movieDetails, isBookmark: $isBookmark, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isFailure: $isFailure, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailsState &&
            (identical(other.movieDetails, movieDetails) ||
                other.movieDetails == movieDetails) &&
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
  int get hashCode => Object.hash(runtimeType, movieDetails, isBookmark,
      isLoading, isLoadingMore, isFailure, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailsStateCopyWith<_$_MovieDetailsState> get copyWith =>
      __$$_MovieDetailsStateCopyWithImpl<_$_MovieDetailsState>(
          this, _$identity);
}

abstract class _MovieDetailsState implements MovieDetailsState {
  factory _MovieDetailsState(
      {final MovieDetails? movieDetails,
      final bool? isBookmark,
      final bool? isLoading,
      final bool? isLoadingMore,
      final bool? isFailure,
      final String? failureMessage}) = _$_MovieDetailsState;

  @override
  MovieDetails? get movieDetails;
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
