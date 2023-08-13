import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';

import '../../../home_page/data/repositories/movie_list_repository_impl.dart';
import '../../domain/repositories/movie_book_mark_repository.dart';
import '../source/data_source.dart';

class MovieBookMarkRepositoryImpl extends MovieBookMarkRepository {
  final MovieDetailsRemoteSource movieDetailsRemoteSource;

  MovieBookMarkRepositoryImpl({required this.movieDetailsRemoteSource});

  @override
  Future<Either<Failures, int>> addToBookMark({required data}) async {
    return await BodyCall<int>()(
      () => movieDetailsRemoteSource.addToBookMark(data: data ),
    );
  }

  @override
  Future<Either<Failures, bool>> isBookmarks() {
    // TODO: implement isBookmarks
    throw UnimplementedError();
  }
}
