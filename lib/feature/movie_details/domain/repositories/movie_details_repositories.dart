import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/entities/movie_details.dart';

abstract class MovieDetailsRepository{

  Future<Either<Failures, MovieDetails>> getMovieDetails({required movieId});
  Future<Either<Failures, bool>> isBookmark({required int movieId});

}
