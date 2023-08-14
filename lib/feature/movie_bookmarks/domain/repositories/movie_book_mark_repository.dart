import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';
import '../../../../core/errors/failures.dart';

abstract class MovieBookMarkRepository{

  Future<Either<Failures, List<Map<String, Object?>>>> addToBookMark({required data});
  Future<Either<Failures, bool>> isBookmarks();
  Future<Either<Failures, List<GetBookmarks>>> getBookmarks({required DataBaseHelper dataBaseHelper});
}