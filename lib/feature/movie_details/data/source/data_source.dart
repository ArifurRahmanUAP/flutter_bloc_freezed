import 'package:dio/dio.dart';
import 'package:flutter_test_bloc/core/database/data_base_helper.dart';
import 'package:flutter_test_bloc/core/errors/failures.dart';

import '../model/movie_details_model.dart';

abstract class MovieDetailsRemoteSource {
  Future<MovieDetailsModel> getMovieDetails({required movieId});

  Future<int> addToBookMark({required data,});
}

class MovieDetailsRemoteSourceImpl implements MovieDetailsRemoteSource {
  Dio dio = Dio();

  MovieDetailsRemoteSourceImpl(this.dio);

  @override
  Future<MovieDetailsModel> getMovieDetails({required movieId}) async {
    final response = await dio.get(
      "https://api.themoviedb.org/3/movie/$movieId?api_key=98f3908014410fc8a0a0393df1b060af&language=en-US",
    );

    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJson(response.data);
    } else {
      throw ServerFailure(
          message: '${response.statusCode}: ${response.statusCode}');
    }
  }

  @override
  Future<int> addToBookMark({required data}) async {


    return await data["data"].addToBookmark(data["list"]);
  }
}
