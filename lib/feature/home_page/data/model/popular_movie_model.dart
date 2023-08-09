import 'package:flutter_test_bloc/feature/home_page/domain/entities/popular_movie.dart';

//ignore: must_be_immutable
class PopularMovieModel extends PopularMovies {
  PopularMovieModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  PopularMovieModel.fromJson(dynamic json) {
    page = json['page'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(ResultsModel.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  @override
  num? page;
  @override
  List<Results>? results;
  @override
  num? totalPages;
  @override
  num? totalResults;

  factory PopularMovieModel.fromObject({required PopularMovies popularMovie}) =>
      PopularMovieModel(
        page: popularMovie.page,
        results: popularMovie.results,
        totalPages: popularMovie.totalPages,
        totalResults: popularMovie.totalResults,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = page;
    if (results != null) {
      map['results'] = results
          ?.map((v) => ResultsModel.fromObject(results: v).toJson())
          .toList();
    }
    map['total_pages'] = totalPages;
    map['total_results'] = totalResults;
    return map;
  }
}

//ignore: must_be_immutable
class ResultsModel extends Results {
  ResultsModel({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  ResultsModel.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<num>() : [];
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  @override
  bool? adult;
  @override
  String? backdropPath;
  @override
  List<num>? genreIds;
  @override
  num? id;
  @override
  String? originalLanguage;
  @override
  String? originalTitle;
  @override
  String? overview;
  @override
  num? popularity;
  @override
  String? posterPath;
  @override
  String? releaseDate;
  @override
  String? title;
  @override
  bool? video;
  @override
  num? voteAverage;
  @override
  num? voteCount;

  factory ResultsModel.fromObject({required Results results}) => ResultsModel(
        adult: results.adult,
        backdropPath: results.backdropPath,
        genreIds: results.genreIds,
        id: results.id,
        originalLanguage: results.originalLanguage,
        originalTitle: results.originalTitle,
        overview: results.overview,
        popularity: results.popularity,
        posterPath: results.posterPath,
        releaseDate: results.releaseDate,
        title: results.title,
        video: results.video,
        voteAverage: results.voteAverage,
        voteCount: results.voteCount,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['genre_ids'] = genreIds;
    map['id'] = id;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    map['release_date'] = releaseDate;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }
}
