
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_event.freezed.dart';

@freezed
class MovieListEvent with _$MovieListEvent {

   factory MovieListEvent.getPopularMovies({required int pageNo}) = _GetPopularMovies;

  const factory MovieListEvent.getNowShingMovies({required int pageNo}) = _GetNowShongMovies;

}
