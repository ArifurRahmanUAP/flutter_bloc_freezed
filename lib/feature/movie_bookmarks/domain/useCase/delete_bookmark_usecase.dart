import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/repositories/movie_book_mark_repository.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';

class DeleteBookmarkUseCase implements UseCase<void, int> {
  final MovieBookMarkRepository repository;

  DeleteBookmarkUseCase({required this.repository});

  @override
  Future<Either<Failures, void>?> call(int movieId) async {
    return await repository.deleteBookMark(movieId: movieId);
  }
}
