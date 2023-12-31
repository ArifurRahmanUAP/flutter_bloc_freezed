import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/feature/home_page/data/source/data_source.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/entities/popular_movie.dart';
import 'package:flutter_test_bloc/feature/home_page/domain/repositories/movie_repository.dart';

class MovieListRepositoriesImpl implements MovieListRepository{
  final MovieListRemoteSource movieListRemoteDataSource;
  MovieListRepositoriesImpl({required this.movieListRemoteDataSource});


  @override
  Future<Either<Failures, PopularMovies>> getPopularMovies({required int pageNo}) async {
    return await BodyCall<PopularMovies>()(
    () => movieListRemoteDataSource.getPopularMovies(pageNo: pageNo),
    );
  }

  @override
  Future<Either<Failures, PopularMovies>> getNowShowingMovies({required int pageNo}) async {
    return await BodyCall<PopularMovies>()(
          () => movieListRemoteDataSource.getNowShowingMovies(pageNo: pageNo),
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