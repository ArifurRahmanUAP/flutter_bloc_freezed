import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/entities/movie_details.dart';
import '../../../../core/errors/failures.dart';

abstract class MovieBookMarkRepository{

  Future<Either<Failures, int>> addToBookMark({required data});
  Future<Either<Failures, bool>> isBookmarks();
}