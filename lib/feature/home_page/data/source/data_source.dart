import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';

import '../model/popular_movie_model.dart';

abstract class MovieListRemoteSource {
  Future<PopularMovieModel> getPopularMovies();
}

class MovieListRemoteDataSourceImpl implements MovieListRemoteSource {
  Dio dios = Dio();

  MovieListRemoteDataSourceImpl(this.dios);

  @override
  Future<PopularMovieModel> getPopularMovies() async {
    final response = await dios.get(
      'https://api.themoviedb.org/3/movie/popular?api_key=3479c5fe9ddcf97176adc7bba656c7b5&language=en-US&page=1',
    );

    if (response.statusCode == 200) {
      return PopularMovieModel.fromJson(jsonDecode(response.data));
    } else {
      throw ServerFailure(
          message: '${response.statusCode}: ${response.statusCode}');
    }
  }
}
