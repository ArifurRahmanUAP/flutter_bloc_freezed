
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_event.freezed.dart';

@freezed
class MovieListEvent with _$MovieListEvent {

  const factory MovieListEvent.getPopularMovies() = _GetPopularMovies;

}
