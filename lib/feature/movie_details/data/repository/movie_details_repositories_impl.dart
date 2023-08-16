import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../home_page/data/repositories/movie_list_repository_impl.dart';
import '../../domain/entities/movie_details.dart';
import '../../domain/repositories/movie_details_repositories.dart';
import '../source/data_source.dart';

class MovieDetailsRepositoriesImpl extends MovieDetailsRepository {
  final MovieDetailsRemoteSource movieDetailsRemoteSource;

  MovieDetailsRepositoriesImpl({required this.movieDetailsRemoteSource});

  @override
  Future<Either<Failures, MovieDetails>> getMovieDetails(
      {required movieId}) async {
    return await BodyCall<MovieDetails>()(
      () => movieDetailsRemoteSource.getMovieDetails(movieId: movieId),
    );
  }

  @override
  Future<Either<Failures, bool>> isBookmark({required int movieId}) async {
    return await BodyCall<bool>()(
          () => movieDetailsRemoteSource.isBookmark(movieId: movieId),
    );
  }
}
