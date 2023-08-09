import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/repositories/movie_details_repositories.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/movie_details.dart';

class GetMovieDetailsUseCase implements UseCase<MovieDetails, int> {
  final MovieDetailsRepository repository;

  GetMovieDetailsUseCase({required this.repository});

  @override
  Future<Either<Failures, MovieDetails>?> call(movieId) async {
    return repository.getMovieDetails(movieId: movieId);
  }
}
