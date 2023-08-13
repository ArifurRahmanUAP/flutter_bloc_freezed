import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/core/usecases/usecase.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/entities/movie_details.dart';

import '../repositories/movie_book_mark_repository.dart';

class AddMoviesToBookmarkUseCase implements UseCase<int, Map<String, dynamic>> {
  final MovieBookMarkRepository repository;

  AddMoviesToBookmarkUseCase({required this.repository});

  @override
  Future<Either<Failures, int>?> call(data) {

    return repository.addToBookMark(data: data);
  }


}