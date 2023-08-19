import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/entities/popular_movie.dart';

abstract class MovieListRepository{

  Future<Either<Failures, PopularMovies>> getPopularMovies({required int pageNo});
  Future<Either<Failures, PopularMovies>> getNowShowingMovies({required int pageNo});
}
