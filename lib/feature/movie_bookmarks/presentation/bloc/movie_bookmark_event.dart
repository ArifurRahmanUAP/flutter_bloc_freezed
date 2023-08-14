part of 'movie_bookmark_bloc.dart';

@freezed
class MovieBookmarkEvent with _$MovieBookmarkEvent {
  const factory MovieBookmarkEvent.isMovieBookmarkEvent({movieId}) =
  _IsMovieBookmarkEvent;

  const factory MovieBookmarkEvent.addToBookmarkEvent(
      {data}) = _AddToBookmarkEvent;

  const factory MovieBookmarkEvent.getBookmarkEvent(
      {dataBaseHelper}) = _GetBookmarkEvent;
}
