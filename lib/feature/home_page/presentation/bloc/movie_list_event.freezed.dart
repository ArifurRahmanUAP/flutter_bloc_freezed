// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieListEvent {
  int get pageNo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNo) getPopularMovies,
    required TResult Function(int pageNo) getNowShingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNo)? getPopularMovies,
    TResult? Function(int pageNo)? getNowShingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNo)? getPopularMovies,
    TResult Function(int pageNo)? getNowShingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPopularMovies value) getPopularMovies,
    required TResult Function(_GetNowShongMovies value) getNowShingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPopularMovies value)? getPopularMovies,
    TResult? Function(_GetNowShongMovies value)? getNowShingMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? getPopularMovies,
    TResult Function(_GetNowShongMovies value)? getNowShingMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieListEventCopyWith<MovieListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListEventCopyWith<$Res> {
  factory $MovieListEventCopyWith(
          MovieListEvent value, $Res Function(MovieListEvent) then) =
      _$MovieListEventCopyWithImpl<$Res, MovieListEvent>;
  @useResult
  $Res call({int pageNo});
}

/// @nodoc
class _$MovieListEventCopyWithImpl<$Res, $Val extends MovieListEvent>
    implements $MovieListEventCopyWith<$Res> {
  _$MovieListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = null,
  }) {
    return _then(_value.copyWith(
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPopularMoviesCopyWith<$Res>
    implements $MovieListEventCopyWith<$Res> {
  factory _$$_GetPopularMoviesCopyWith(
          _$_GetPopularMovies value, $Res Function(_$_GetPopularMovies) then) =
      __$$_GetPopularMoviesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageNo});
}

/// @nodoc
class __$$_GetPopularMoviesCopyWithImpl<$Res>
    extends _$MovieListEventCopyWithImpl<$Res, _$_GetPopularMovies>
    implements _$$_GetPopularMoviesCopyWith<$Res> {
  __$$_GetPopularMoviesCopyWithImpl(
      _$_GetPopularMovies _value, $Res Function(_$_GetPopularMovies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = null,
  }) {
    return _then(_$_GetPopularMovies(
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetPopularMovies implements _GetPopularMovies {
  _$_GetPopularMovies({required this.pageNo});

  @override
  final int pageNo;

  @override
  String toString() {
    return 'MovieListEvent.getPopularMovies(pageNo: $pageNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPopularMovies &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPopularMoviesCopyWith<_$_GetPopularMovies> get copyWith =>
      __$$_GetPopularMoviesCopyWithImpl<_$_GetPopularMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNo) getPopularMovies,
    required TResult Function(int pageNo) getNowShingMovies,
  }) {
    return getPopularMovies(pageNo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNo)? getPopularMovies,
    TResult? Function(int pageNo)? getNowShingMovies,
  }) {
    return getPopularMovies?.call(pageNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNo)? getPopularMovies,
    TResult Function(int pageNo)? getNowShingMovies,
    required TResult orElse(),
  }) {
    if (getPopularMovies != null) {
      return getPopularMovies(pageNo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPopularMovies value) getPopularMovies,
    required TResult Function(_GetNowShongMovies value) getNowShingMovies,
  }) {
    return getPopularMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPopularMovies value)? getPopularMovies,
    TResult? Function(_GetNowShongMovies value)? getNowShingMovies,
  }) {
    return getPopularMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? getPopularMovies,
    TResult Function(_GetNowShongMovies value)? getNowShingMovies,
    required TResult orElse(),
  }) {
    if (getPopularMovies != null) {
      return getPopularMovies(this);
    }
    return orElse();
  }
}

abstract class _GetPopularMovies implements MovieListEvent {
  factory _GetPopularMovies({required final int pageNo}) = _$_GetPopularMovies;

  @override
  int get pageNo;
  @override
  @JsonKey(ignore: true)
  _$$_GetPopularMoviesCopyWith<_$_GetPopularMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetNowShongMoviesCopyWith<$Res>
    implements $MovieListEventCopyWith<$Res> {
  factory _$$_GetNowShongMoviesCopyWith(_$_GetNowShongMovies value,
          $Res Function(_$_GetNowShongMovies) then) =
      __$$_GetNowShongMoviesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageNo});
}

/// @nodoc
class __$$_GetNowShongMoviesCopyWithImpl<$Res>
    extends _$MovieListEventCopyWithImpl<$Res, _$_GetNowShongMovies>
    implements _$$_GetNowShongMoviesCopyWith<$Res> {
  __$$_GetNowShongMoviesCopyWithImpl(
      _$_GetNowShongMovies _value, $Res Function(_$_GetNowShongMovies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = null,
  }) {
    return _then(_$_GetNowShongMovies(
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetNowShongMovies implements _GetNowShongMovies {
  const _$_GetNowShongMovies({required this.pageNo});

  @override
  final int pageNo;

  @override
  String toString() {
    return 'MovieListEvent.getNowShingMovies(pageNo: $pageNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetNowShongMovies &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetNowShongMoviesCopyWith<_$_GetNowShongMovies> get copyWith =>
      __$$_GetNowShongMoviesCopyWithImpl<_$_GetNowShongMovies>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageNo) getPopularMovies,
    required TResult Function(int pageNo) getNowShingMovies,
  }) {
    return getNowShingMovies(pageNo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageNo)? getPopularMovies,
    TResult? Function(int pageNo)? getNowShingMovies,
  }) {
    return getNowShingMovies?.call(pageNo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageNo)? getPopularMovies,
    TResult Function(int pageNo)? getNowShingMovies,
    required TResult orElse(),
  }) {
    if (getNowShingMovies != null) {
      return getNowShingMovies(pageNo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPopularMovies value) getPopularMovies,
    required TResult Function(_GetNowShongMovies value) getNowShingMovies,
  }) {
    return getNowShingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPopularMovies value)? getPopularMovies,
    TResult? Function(_GetNowShongMovies value)? getNowShingMovies,
  }) {
    return getNowShingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPopularMovies value)? getPopularMovies,
    TResult Function(_GetNowShongMovies value)? getNowShingMovies,
    required TResult orElse(),
  }) {
    if (getNowShingMovies != null) {
      return getNowShingMovies(this);
    }
    return orElse();
  }
}

abstract class _GetNowShongMovies implements MovieListEvent {
  const factory _GetNowShongMovies({required final int pageNo}) =
      _$_GetNowShongMovies;

  @override
  int get pageNo;
  @override
  @JsonKey(ignore: true)
  _$$_GetNowShongMoviesCopyWith<_$_GetNowShongMovies> get copyWith =>
      throw _privateConstructorUsedError;
}
