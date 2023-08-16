import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/entities/movie_details.dart';
import '../../../../core/errors/failures.dart';

abstract class MovieBookMarkRepository{

  Future<Either<Failures, List<Map<String, Object?>>>> addToBookMark({required MovieDetails movieDetails});
  Future<Either<Failures, void>> deleteBookMark({required int movieId});
  Future<Either<Failures, List<GetBookmarks>>> getBookmarks();
}