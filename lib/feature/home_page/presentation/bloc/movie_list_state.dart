import 'package:flutter_test_bloc/feature/home_page/domain/entities/popular_movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_list_state.freezed.dart';

@freezed
class MovieListState with _$MovieListState {
  factory MovieListState({
    PopularMovies? popularMovies,
    bool? isLoading,
    bool? isLoadingMore,
    bool? isFailure,
    String? failureMessage,
  }) = _MovieListState;

  factory MovieListState.initial() => MovieListState(
      popularMovies: null,
      isLoading: false,
      isFailure: false,
      isLoadingMore: false,
      failureMessage: null);
}
