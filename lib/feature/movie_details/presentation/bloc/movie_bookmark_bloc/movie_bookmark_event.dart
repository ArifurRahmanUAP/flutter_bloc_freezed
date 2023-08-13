part of 'movie_bookmark_bloc.dart';

@freezed
class MovieBookmarkEvent with _$MovieBookmarkEvent {
  const factory MovieBookmarkEvent.isMovieBookmarkEvent({movieId}) =
      _GetPopularMovies;

  const factory MovieBookmarkEvent.addToBookmarkEvent(
      {data}) = _GetNowShongMovies;
}
