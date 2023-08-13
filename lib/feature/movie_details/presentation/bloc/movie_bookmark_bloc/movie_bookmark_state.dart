part of 'movie_bookmark_bloc.dart';


@freezed
class MovieBookmarkState with _$MovieBookmarkState {
  factory MovieBookmarkState({
    bool? isBookmark,
    bool? isLoading,
    bool? isLoadingMore,
    bool? isFailure,
    String? failureMessage,
  }) = _MovieDetailsState;

  factory MovieBookmarkState.initial() => MovieBookmarkState(
      isBookmark: false,
      isLoading: false,
      isFailure: false,
      isLoadingMore: false,
      failureMessage: null);
}
