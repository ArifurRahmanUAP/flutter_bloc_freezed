import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/popular_movie.dart';
import '../repositories/movie_repository.dart';

class GetPopularMoviesUseCase implements UseCase<PopularMovies, NoParams>{
  final MovieListRepository repository;
  GetPopularMoviesUseCase({required this.repository});

  @override
  Future<Either<Failures, PopularMovies>?> call(NoParams params) {
    return repository.getPopularMovies();
  }

}


class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}