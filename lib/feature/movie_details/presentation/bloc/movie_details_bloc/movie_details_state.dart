part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  factory MovieDetailsState({
    MovieDetails? movieDetails,
    bool? isLoading,
    bool? isLoadingMore,
    bool? isFailure,
    String? failureMessage,
}) = _MovieDetailsState;

  factory MovieDetailsState.initial() => MovieDetailsState(
      movieDetails: null,
      isLoading: false,
      isFailure: false,
      isLoadingMore: false,
      failureMessage: null);
}

