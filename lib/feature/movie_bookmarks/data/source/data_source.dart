import 'package:dio/dio.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/feature/movie_bookmarks/domain/entities/get_bookmarks.dart';
import 'package:flutter_test_bloc/injection.dart';

abstract class BookmarkRemoteSource {
  Future<List<Map<String, Object?>>> addToBookMark({required data,});
  Future<List<GetBookmarks>> getBookmarksData({required DataBaseHelper databaseHelper,});
}

class GetBookmarkRemoteSourceImpl implements BookmarkRemoteSource {
  Dio dio = Dio();

  GetBookmarkRemoteSourceImpl(this.dio);


  @override
  Future<List<Map<String, Object?>>> addToBookMark({required data}) async {

    return await data["data"].addToBookmark(data["list"]);
  }

  @override
  Future<List<GetBookmarks>> getBookmarksData({required DataBaseHelper databaseHelper}) {
    return databaseHelper.getBookMarks();
  }
}
