import 'package:dio/dio.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';
import 'package:flutter_test_bloc/feature/movie_details/domain/entities/movie_details.dart';
import 'package:flutter_test_bloc/injection.dart';

abstract class BookmarkRemoteSource {
  Future<List<Map<String, Object?>>> addToBookMark({required MovieDetails movieDetails,});
  Future<List<GetBookmarks>> getBookmarksData();
  Future<void> deleteBookmark({required int movieId});

}

class GetBookmarkRemoteSourceImpl implements BookmarkRemoteSource {
  Dio dio = locator<Dio>();
  DataBaseHelper databaseHelper = locator<DataBaseHelper>();

  GetBookmarkRemoteSourceImpl(this.dio, this.databaseHelper);


  @override
  Future<List<Map<String, Object?>>> addToBookMark({required movieDetails}) async {

    return await databaseHelper.addToBookmark(movieDetails);
  }

  @override
  Future<List<GetBookmarks>> getBookmarksData() {
    return databaseHelper.getBookMarks();
  }

  @override
  Future<void> deleteBookmark({required int movieId}) async {
    return await databaseHelper.deleteFromBookmark(movieId: movieId);
  }

}
