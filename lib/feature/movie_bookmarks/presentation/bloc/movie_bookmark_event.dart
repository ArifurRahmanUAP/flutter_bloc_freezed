part of 'movie_bookmark_bloc.dart';

@freezed
class MovieBookmarkEvent with _$MovieBookmarkEvent {

  const factory MovieBookmarkEvent.addToBookmarkEvent(
      {movieDetails}) = _AddToBookmarkEvent;

  const factory MovieBookmarkEvent.getBookmarkEvent(
      {dataBaseHelper}) = _GetBookmarkEvent;

  const factory MovieBookmarkEvent.deleteBookmarkEvent(
      {movieId}) = _DleteBookmarkEvent;
}
