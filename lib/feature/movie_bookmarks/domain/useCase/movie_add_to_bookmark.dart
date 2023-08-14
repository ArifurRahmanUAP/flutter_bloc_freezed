import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/core/usecases/usecase.dart';
import '../repositories/movie_book_mark_repository.dart';

class AddMoviesToBookmarkUseCase implements UseCase<List<Map<String, Object?>>, Map<String, dynamic>> {
  final MovieBookMarkRepository repository;

  AddMoviesToBookmarkUseCase({required this.repository});

  @override
  Future<Either<Failures, List<Map<String, Object?>>>?> call(data) {

    return repository.addToBookMark(data: data);
  }

}