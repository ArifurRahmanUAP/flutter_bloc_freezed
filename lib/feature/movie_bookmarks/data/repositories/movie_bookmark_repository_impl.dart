import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/data/source/data_source.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';

import '../../../home_page/data/repositories/movie_list_repository_impl.dart';
import '../../domain/repositories/movie_book_mark_repository.dart';

class MovieBookMarkRepositoryImpl extends MovieBookMarkRepository {
  final BookmarkRemoteSource bookmarkRemoteSource;

  MovieBookMarkRepositoryImpl({required this.bookmarkRemoteSource});

  @override
  Future<Either<Failures, List<Map<String, dynamic>>>> addToBookMark(
      {required movieDetails}) async {
    return await BodyCall<List<Map<String, dynamic>>>()(
      () => bookmarkRemoteSource.addToBookMark(movieDetails: movieDetails),
    );
  }

  @override
  Future<Either<Failures, List<GetBookmarks>>> getBookmarks() async {
    return await BodyCall<List<GetBookmarks>>()(
      () => bookmarkRemoteSource.getBookmarksData(),
    );
  }

  @override
  Future<Either<Failures, void>> deleteBookMark({required int movieId}) async {
    return await BodyCall<void>()(
      () => bookmarkRemoteSource.deleteBookmark(movieId: movieId),
    );
  }
}
