part of 'movie_bookmark_bloc.dart';

@freezed
class MovieBookmarkState with _$MovieBookmarkState {
  factory MovieBookmarkState({
    List<GetBookmarks>? bookmarksData,
    bool? isLoading,
    bool? isLoadingMore,
    bool? isFailure,
    String? failureMessage,
  }) = _MovieDetailsState;

  factory MovieBookmarkState.initial() => MovieBookmarkState(
      isLoading: false,
      bookmarksData: [],
      isFailure: false,
      isLoadingMore: false,
      failureMessage: null);
}
