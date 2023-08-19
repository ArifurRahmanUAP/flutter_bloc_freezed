
import 'package:dio/dio.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/injection.dart';

import '../model/popular_movie_model.dart';

abstract class MovieListRemoteSource {
  Future<MovieListModel> getPopularMovies({required int pageNo});
  Future<MovieListModel> getNowShowingMovies({required int pageNo});
}

class MovieListRemoteDataSourceImpl implements MovieListRemoteSource {
  var dio = locator<Dio>();

  MovieListRemoteDataSourceImpl(this.dio);

  @override
  Future<MovieListModel> getPopularMovies({required int pageNo}) async {
    final response = await dio.get(
      'https://api.themoviedb.org/3/movie/popular?api_key=3479c5fe9ddcf97176adc7bba656c7b5&language=en-US&page=$pageNo',
    );

    if (response.statusCode == 200) {
      return MovieListModel.fromJson(response.data);
    } else {
      throw ServerFailure(
          message: '${response.statusCode}: ${response.statusCode}');
    }
  }

  @override
  Future<MovieListModel> getNowShowingMovies({required int pageNo}) async {
    final response = await dio.get(
      'https://api.themoviedb.org/3/movie/now_playing?api_key=3479c5fe9ddcf97176adc7bba656c7b5&language=en-US&page=$pageNo',
    );

    if (response.statusCode == 200) {
      return MovieListModel.fromJson(response.data);
    } else {
      throw ServerFailure(
          message: '${response.statusCode}: ${response.statusCode}');
    }
  }
}
