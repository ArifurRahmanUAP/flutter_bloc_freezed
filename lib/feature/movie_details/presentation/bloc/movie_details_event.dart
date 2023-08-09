part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsEvent with _$MovieDetailsEvent {
  factory MovieDetailsEvent.getMovieDetails({movieId})
  = _GetMovieDetails;
}
