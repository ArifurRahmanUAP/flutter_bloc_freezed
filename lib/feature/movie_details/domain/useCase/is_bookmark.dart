import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/usecases/usecase.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/movie_details_repositories.dart';

class IsBookmarkUseCase implements UseCase<bool, int> {
  final MovieDetailsRepository repository;

  IsBookmarkUseCase({required this.repository});

  @override
  Future<Either<Failures, bool>?> call(int movieId) async {
    return await repository.isBookmark(movieId: movieId);
  }
}
