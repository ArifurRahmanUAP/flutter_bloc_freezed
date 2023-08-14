import 'package:dartz/dartz.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/data/source/data_source.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';

import '../../../home_page/data/repositories/movie_list_repository_impl.dart';
import '../../domain/repositories/movie_book_mark_repository.dart';

class MovieBookMarkRepositoryImpl extends MovieBookMarkRepository {
  final BookmarkRemoteSource getBookmarkRemoteSource;

  MovieBookMarkRepositoryImpl({required this.getBookmarkRemoteSource});

  @override
  Future<Either<Failures, List<Map<String, dynamic>>>> addToBookMark({required data}) async {
    return await BodyCall<List<Map<String, dynamic>>>()(
      () => getBookmarkRemoteSource.addToBookMark(data: data),
    );
  }

  @override
  Future<Either<Failures, bool>> isBookmarks() {
    // TODO: implement isBookmarks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<GetBookmarks>>> getBookmarks(
      {required DataBaseHelper dataBaseHelper}) async {
    return await BodyCall<List<GetBookmarks>>()(
      () => getBookmarkRemoteSource.getBookmarksData(
          databaseHelper: dataBaseHelper),
    );
  }
}
