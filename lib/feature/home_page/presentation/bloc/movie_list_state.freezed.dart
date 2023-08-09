// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieListState {
  PopularMovies? get popularMovies => throw _privateConstructorUsedError;
  PopularMovies? get nowShowingMovies => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isLoadingMore => throw _privateConstructorUsedError;
  bool? get isFailure => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieListStateCopyWith<MovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(
          MovieListState value, $Res Function(MovieListState) then) =
      _$MovieListStateCopyWithImpl<$Res, MovieListState>;
  @useResult
  $Res call(
      {PopularMovies? popularMovies,
      PopularMovies? nowShowingMovies,
      bool? isLoading,
      bool? isLoadingMore,
      bool? isFailure,
      String? failureMessage});
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res, $Val extends MovieListState>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies = freezed,
    Object? nowShowingMovies = freezed,
    Object? isLoading = freezed,
    Object? isLoadingMore = freezed,
    Object? isFailure = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_value.copyWith(
      popularMovies: freezed == popularMovies
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as PopularMovies?,
      nowShowingMovies: freezed == nowShowingMovies
          ? _value.nowShowingMovies
          : nowShowingMovies // ignore: cast_nullable_to_non_nullable
              as PopularMovies?,
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
abstract class _$$_MovieListStateCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory _$$_MovieListStateCopyWith(
          _$_MovieListState value, $Res Function(_$_MovieListState) then) =
      __$$_MovieListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PopularMovies? popularMovies,
      PopularMovies? nowShowingMovies,
      bool? isLoading,
      bool? isLoadingMore,
      bool? isFailure,
      String? failureMessage});
}

/// @nodoc
class __$$_MovieListStateCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$_MovieListState>
    implements _$$_MovieListStateCopyWith<$Res> {
  __$$_MovieListStateCopyWithImpl(
      _$_MovieListState _value, $Res Function(_$_MovieListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies = freezed,
    Object? nowShowingMovies = freezed,
    Object? isLoading = freezed,
    Object? isLoadingMore = freezed,
    Object? isFailure = freezed,
    Object? failureMessage = freezed,
  }) {
    return _then(_$_MovieListState(
      popularMovies: freezed == popularMovies
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as PopularMovies?,
      nowShowingMovies: freezed == nowShowingMovies
          ? _value.nowShowingMovies
          : nowShowingMovies // ignore: cast_nullable_to_non_nullable
              as PopularMovies?,
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

class _$_MovieListState implements _MovieListState {
  _$_MovieListState(
      {this.popularMovies,
      this.nowShowingMovies,
      this.isLoading,
      this.isLoadingMore,
      this.isFailure,
      this.failureMessage});

  @override
  final PopularMovies? popularMovies;
  @override
  final PopularMovies? nowShowingMovies;
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
    return 'MovieListState(popularMovies: $popularMovies, nowShowingMovies: $nowShowingMovies, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isFailure: $isFailure, failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieListState &&
            (identical(other.popularMovies, popularMovies) ||
                other.popularMovies == popularMovies) &&
            (identical(other.nowShowingMovies, nowShowingMovies) ||
                other.nowShowingMovies == nowShowingMovies) &&
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
  int get hashCode => Object.hash(runtimeType, popularMovies, nowShowingMovies,
      isLoading, isLoadingMore, isFailure, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieListStateCopyWith<_$_MovieListState> get copyWith =>
      __$$_MovieListStateCopyWithImpl<_$_MovieListState>(this, _$identity);
}

abstract class _MovieListState implements MovieListState {
  factory _MovieListState(
      {final PopularMovies? popularMovies,
      final PopularMovies? nowShowingMovies,
      final bool? isLoading,
      final bool? isLoadingMore,
      final bool? isFailure,
      final String? failureMessage}) = _$_MovieListState;

  @override
  PopularMovies? get popularMovies;
  @override
  PopularMovies? get nowShowingMovies;
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
  _$$_MovieListStateCopyWith<_$_MovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}
