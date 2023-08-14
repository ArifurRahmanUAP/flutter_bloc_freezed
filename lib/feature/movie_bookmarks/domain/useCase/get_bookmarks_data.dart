

import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/core/usecases/usecase.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';

import '../repositories/movie_book_mark_repository.dart';

class GetBookmarksMovieUseCase extends UseCase<List<GetBookmarks>, DataBaseHelper>{

  final MovieBookMarkRepository repository;
  GetBookmarksMovieUseCase({required this.repository});

  @override
  Future<Either<Failures, List<GetBookmarks>>?> call(DataBaseHelper databaseHelper) {
    return repository.getBookmarks(dataBaseHelper: databaseHelper);
  }

}