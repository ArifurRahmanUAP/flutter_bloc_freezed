import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/popular_movie.dart';
import '../repositories/movie_repository.dart';

class GetNowShowingMoviesUseCase implements UseCase<PopularMovies, int>{
  final MovieListRepository repository;
  GetNowShowingMoviesUseCase({required this.repository});

  @override
  Future<Either<Failures, PopularMovies>?> call(pageNo) {
    return repository.getNowShowingMovies(pageNo: pageNo);
  }



}
