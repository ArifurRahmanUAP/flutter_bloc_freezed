import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/feature/home_page/data/source/data_source.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/entities/popular_movie.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/repositories/movie_repository.dart';

class MovieListRepositoriesImpl implements MovieListRepository{
  final MovieListRemoteSource movieListRemoteDataSource;
  MovieListRepositoriesImpl({required this.movieListRemoteDataSource});


  @override
  Future<Either<Failures, PopularMovies>> getPopularMovies() async {
    return await BodyCall<PopularMovies>()(
    () => movieListRemoteDataSource.getPopularMovies(),
    );
  }

  @override
  Future<Either<Failures, PopularMovies>> getNowShowingMovies() async {
    return await BodyCall<PopularMovies>()(
          () => movieListRemoteDataSource.getNowShowingMovies(),
    );
  }

}

class BodyCall<Type> {
  Future<Either<Failures, Type>> call(Future<Type> Function() callable) async {
    try {
      final remoteData = await callable();
      return right(remoteData);
    } on ServerFailure catch (e) {
      return left(ServerFailure(message: e.message));
    }
  }
}